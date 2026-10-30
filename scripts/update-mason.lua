-- Update every installed Mason package, then exit non-zero if any update failed
-- Run by update-packages: nvim --headless -c 'luafile update-mason.lua'

local registry = require("mason-registry")

local function say(message)
  io.stdout:write(message .. "\n")
end

local function quit(failed)
  vim.schedule(function()
    vim.cmd(failed and "cquit 1" or "quitall")
  end)
end

registry.update(function(success, err)
  if not success then
    say("Failed to update the Mason registry: " .. vim.inspect(err))
    return quit(true)
  end

  local outdated = vim.tbl_filter(function(pkg)
    return pkg:get_installed_version() ~= pkg:get_latest_version()
  end, registry.get_installed_packages())

  if #outdated == 0 then
    say("All Mason packages are up to date")
    return quit(false)
  end

  local pending, failures = #outdated, 0
  for _, pkg in ipairs(outdated) do
    local from, to = pkg:get_installed_version(), pkg:get_latest_version()
    pkg:install(nil, function(ok, result)
      if ok then
        say(("Updated %s %s -> %s"):format(pkg.name, from, to))
      else
        failures = failures + 1
        say(("Failed to update %s: %s"):format(pkg.name, vim.inspect(result)))
      end
      pending = pending - 1
      if pending == 0 then
        quit(failures > 0)
      end
    end)
  end
end)

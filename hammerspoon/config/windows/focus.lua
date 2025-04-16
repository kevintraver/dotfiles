local M = {}

function M.focusWindowWest()
  local win = hs.window.frontmostWindow()
  if win then win:focusWindowWest(nil, true) end
end

function M.focusWindowEast()
  local win = hs.window.frontmostWindow()
  if win then
    win:focusWindowEast(nil, true)
  end
end

function M.focusWest()
  local win = hs.window.frontmostWindow()
  if not win then return end
  local screens = hs.screen.allScreens()
  if #screens <= 1 then return M.focusWindowWest() end
  local currentScreen = win:screen()
  local windows = win:windowsToWest(nil, true)
  for _, window in ipairs(windows) do
    if window:screen() ~= currentScreen then
      window:focus(); return
    end
  end
end

function M.focusEast()
  local win = hs.window.frontmostWindow()
  if not win then return end
  local screens = hs.screen.allScreens()
  if #screens <= 1 then return M.focusWindowEast() end
  local currentScreen = win:screen()
  local windows = win:windowsToEast(nil, true)
  for _, window in ipairs(windows) do
    if window:screen() ~= currentScreen then
      window:focus(); return
    end
  end
end

return M

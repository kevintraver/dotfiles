local M = {}
local settings = require("config.windows.settings")
local helpers = require("config.windows.helpers")
local logger = require("config.windows.logger")

local function setGrid(win, cell)
  hs.grid.setGrid(settings.GRID_SIZE)
  hs.grid.setMargins(settings.GRID_MARGINS)
  hs.grid.set(win, cell, win:screen())
end

local prevFrameSizes = {}

function M.toggleFill(win)
  win = win or hs.window.frontmostWindow()
  if not win then return end

  local screenFrame = helpers.getScreenFrame(win)
  local filledFrame = helpers.getFilledFrame(screenFrame)
  win:setFrame(filledFrame)
  logger.logWindowMove(win, "toggleFill")
end

function M.moveToHalf(win, side)
  local id = win:id()
  if side == "left" then
    setGrid(win, { x = 0, y = 0, w = 1, h = 1 })
  elseif side == "right" then
    setGrid(win, { x = 1, y = 0, w = 1, h = 1 })
  end
  logger.logWindowMove(win, "moveToHalf:" .. tostring(side))
end

function M.moveToFill(win)
  win:setFrame(
    helpers.getFilledFrame(
      helpers.getScreenFrame(win)
    )
  )
  logger.logWindowMove(win, "moveToFill")
end

function M.movePairedWindow(win, side)
  local wins = hs.window.orderedWindows()
  local idx
  for i, w in ipairs(wins) do
    if w:id() == win:id() then
      idx = i
      break
    end
  end
  local other = idx and wins[idx + 1]
  if other and other:screen() == win:screen() and other:isVisible() then
    M.moveToHalf(other, side)
    logger.logWindowMove(other, "movePairedWindow:" .. tostring(side))
  end
end

function M.moveWindowWest()
  local wins = hs.window.orderedWindows()
  local win = wins[1]
  if not win then return end
  if #hs.screen.allScreens() > 1 then
    win:moveOneScreenWest(); M.moveToFill(win)
  else
    M.moveToHalf(win, "left")
    M.movePairedWindow(win, "right")
  end
  logger.logWindowMove(win, "moveWindowWest")
end

function M.moveWindowEast()
  local wins = hs.window.orderedWindows()
  local win = wins[1]
  if not win then return end
  if #hs.screen.allScreens() > 1 then
    win:moveOneScreenEast(); M.moveToFill(win)
  else
    M.moveToHalf(win, "right")
    M.movePairedWindow(win, "left")
  end
  logger.logWindowMove(win, "moveWindowEast")
end

function M.fillWindow(win)
  win = win or hs.window.frontmostWindow()
  if not win then return end
  M.moveToFill(win)
  logger.logWindowMove(win, "fillWindow")
end

function M.fillAllWindows()
  local frontmost = hs.window.frontmostWindow()
  if not frontmost then return end
  local currentScreen = frontmost:screen()
  for _, win in ipairs(hs.window.allWindows()) do
    if win:screen() == currentScreen then
      M.fillWindow(win)
    end
  end
end

return M

local S = require("config.windows.settings")
local GRID = { size = S.GRID_SIZE, margins = S.GRID_MARGINS }
-- Set the grid once at load time
hs.grid.setGrid(GRID.size)
hs.grid.setMargins(GRID.margins)
local H = {}

function H.getScreenFrame(win)
  return win:screen():frame()
end

function H.getFilledFrame(screenFrame)
  return {
    x = screenFrame.x + S.PAD,
    y = screenFrame.y + S.PAD,
    w = screenFrame.w - 2 * S.PAD,
    h = screenFrame.h - 2 * S.PAD,
  }
end

function H.getHalfFrame(screenFrame, side)
  local halfWidth = (screenFrame.w - 2 * S.PAD) / 2
  if side == "left" then
    return {
      x = screenFrame.x + S.PAD,
      y = screenFrame.y + S.PAD,
      w = halfWidth,
      h = screenFrame.h - 2 * S.PAD,
    }
  elseif side == "right" then
    return {
      x = screenFrame.x + S.PAD + halfWidth,
      y = screenFrame.y + S.PAD,
      w = halfWidth,
      h = screenFrame.h - 2 * S.PAD,
    }
  end
end

function H.gridPosition(win)
  local c = hs.grid.get(win)
  if c.w == 2 then
    return "full"
  elseif c.x == 0 then
    return "left"
  else
    return "right"
  end
end

function H.isHalf(win)
  local frame = win:frame()
  local screenFrame = H.getScreenFrame(win)
  local left = H.getHalfFrame(screenFrame, "left")
  local right = H.getHalfFrame(screenFrame, "right")
  local function approx(f1, f2)
    return math.abs(f1.x - f2.x) < 2 and math.abs(f1.y - f2.y) < 2 and math.abs(f1.w - f2.w) < 2 and
        math.abs(f1.h - f2.h) < 2
  end
  if approx(frame, left) then return "left" end
  if approx(frame, right) then return "right" end
  return nil
end

function H.isFull(win)
  local frame = win:frame()
  local filled = H.getFilledFrame(H.getScreenFrame(win))
  return math.abs(frame.x - filled.x) < 2 and math.abs(frame.y - filled.y) < 2 and math.abs(frame.w - filled.w) < 2 and
      math.abs(frame.h - filled.h) < 2
end

function H.isFilled(win, pad)
  pad = pad or 10
  local screen = win:screen()
  local frame = screen:frame()
  local winFrame = win:frame()
  local tolerance = 20
  return math.abs(winFrame.x - (frame.x + pad)) < tolerance and
      math.abs(winFrame.y - (frame.y + pad)) < tolerance and
      math.abs(winFrame.w - (frame.w - 2 * pad)) < tolerance and
      math.abs(winFrame.h - (frame.h - 2 * pad)) < tolerance
end

function H.isLeftOrRightHalf(frame, screenFrame, pad)
  local tolerance = 20
  local halfWidth = (screenFrame.w - 2 * pad) / 2
  -- Left half
  if math.abs(frame.x - (screenFrame.x + pad)) < tolerance and
      math.abs(frame.y - (screenFrame.y + pad)) < tolerance and
      math.abs(frame.w - halfWidth) < tolerance and
      math.abs(frame.h - (screenFrame.h - 2 * pad)) < tolerance then
    return "left"
  end
  -- Right half
  if math.abs(frame.x - (screenFrame.x + pad + halfWidth)) < tolerance and
      math.abs(frame.y - (screenFrame.y + pad)) < tolerance and
      math.abs(frame.w - halfWidth) < tolerance and
      math.abs(frame.h - (screenFrame.h - 2 * pad)) < tolerance then
    return "right"
  end
  return nil
end

return H

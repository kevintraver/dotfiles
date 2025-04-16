hs.window.animationDuration = 0

function MoveWindowWest()
  local wins = hs.window.orderedWindows()
  local win = wins[1]
  local nextWin = wins[2]
  if not win then return end
  local screens = hs.screen.allScreens()
  if #screens > 1 then
    win:moveOneScreenWest()
    FillWindow(win)
  else
    hs.grid.setGrid('2x1')
    hs.grid.setMargins({ w = 10, h = 10 })
    hs.grid.set(win, { x = 0, y = 0, w = 1, h = 1 }, win:screen())
    if nextWin and nextWin:screen() == win:screen() then
      hs.grid.set(nextWin, { x = 1, y = 0, w = 1, h = 1 }, win:screen())
    end
  end
end

function MoveWindowEast()
  local wins = hs.window.orderedWindows()
  local win = wins[1]
  local nextWin = wins[2]
  if not win then return end
  local screens = hs.screen.allScreens()
  if #screens > 1 then
    win:moveOneScreenEast()
    FillWindow(win)
  else
    hs.grid.setGrid('2x1')
    hs.grid.setMargins({ w = 10, h = 10 })
    hs.grid.set(win, { x = 1, y = 0, w = 1, h = 1 }, win:screen())
    if nextWin and nextWin:screen() == win:screen() then
      hs.grid.set(nextWin, { x = 0, y = 0, w = 1, h = 1 }, win:screen())
    end
  end
end

local function focusWindowWest()
  local win = hs.window.frontmostWindow()
  if win then
    win:focusWindowWest(nil, true)
  end
end

local function focusWindowEast()
  local win = hs.window.frontmostWindow()
  if win then
    win:focusWindowEast(nil, true)
  end
end

local function focusWest()
  local win = hs.window.frontmostWindow()
  if not win then
    return
  end
  local screens = hs.screen.allScreens()
  if #screens <= 1 then
    return focusWindowWest()
  end
  local currentScreen = win:screen()
  local windows = win:windowsToWest(nil, true)
  for _, window in ipairs(windows) do
    if window:screen() ~= currentScreen then
      window:focus()
      return
    end
  end
end

local function focusEast()
  local win = hs.window.frontmostWindow()
  if not win then
    return
  end
  local screens = hs.screen.allScreens()
  if #screens <= 1 then
    return focusWindowEast()
  end
  local currentScreen = win:screen()
  local windows = win:windowsToEast(nil, true)
  for _, window in ipairs(windows) do
    if window:screen() ~= currentScreen then
      window:focus()
      return
    end
  end
end

local prevFrameSizes = {}

function FillWindow(win)
  win = win or hs.window.frontmostWindow()
  if not win then return end
  local pad = 10
  local screen = win:screen()
  local frame = screen:frame()
  win:setFrame({
    x = frame.x + pad,
    y = frame.y + pad,
    w = frame.w - 2 * pad,
    h = frame.h - 2 * pad,
  })
end

local function isLeftOrRightHalf(frame, screenFrame, pad)
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

local function isFilled(frame, screenFrame, pad)
  local tolerance = 20
  return math.abs(frame.x - (screenFrame.x + pad)) < tolerance and
      math.abs(frame.y - (screenFrame.y + pad)) < tolerance and
      math.abs(frame.w - (screenFrame.w - 2 * pad)) < tolerance and
      math.abs(frame.h - (screenFrame.h - 2 * pad)) < tolerance
end

local function toggleFillWindow(win)
  win = win or hs.window.frontmostWindow()
  if not win then return end
  local screens = hs.screen.allScreens()
  if #screens > 1 then
    FillWindow(win)
    return
  end
  local id = win:id()
  local pad = 10
  local screen = win:screen()
  local frame = screen:frame()
  local targetFrame = hs.geometry.copy({
    x = frame.x + pad,
    y = frame.y + pad,
    w = frame.w - 2 * pad,
    h = frame.h - 2 * pad,
  })
  local winFrame = win:frame()
  if isFilled(winFrame, frame, pad) and prevFrameSizes[id] then
    -- Only restore to half if currently filled and toggling back
    local prev = prevFrameSizes[id]
    local side = isLeftOrRightHalf(prev, frame, pad)
    hs.grid.setGrid('2x1')
    hs.grid.setMargins({ w = 10, h = 10 })
    local wins = hs.window.orderedWindows()
    local winIdx = nil
    for i, w in ipairs(wins) do
      if w:id() == id then
        winIdx = i
        break
      end
    end
    local nextWin = nil
    if winIdx and wins[winIdx + 1] then
      local candidate = wins[winIdx + 1]
      if candidate:screen() == win:screen() and candidate:isVisible() then
        nextWin = candidate
      end
    end
    if side == "left" then
      hs.grid.set(win, { x = 0, y = 0, w = 1, h = 1 }, win:screen())
      if nextWin then
        hs.grid.set(nextWin, { x = 1, y = 0, w = 1, h = 1 }, win:screen())
      end
    elseif side == "right" then
      hs.grid.set(win, { x = 1, y = 0, w = 1, h = 1 }, win:screen())
      if nextWin then
        hs.grid.set(nextWin, { x = 0, y = 0, w = 1, h = 1 }, win:screen())
      end
    else
      hs.grid.set(win, { x = 0, y = 0, w = 1, h = 1 }, win:screen())
      if nextWin then
        hs.grid.set(nextWin, { x = 1, y = 0, w = 1, h = 1 }, win:screen())
      end
    end
    prevFrameSizes[id] = nil
  else
    -- Always fill unless toggling back from filled
    prevFrameSizes[id] = hs.geometry.copy(win:frame())
    win:setFrame(targetFrame)
  end
end

local function fillAllWindows()
  for _, win in ipairs(hs.window.allWindows()) do
    FillWindow(win)
  end
end

local function logWindowAction(action, win)
  win = win or hs.window.frontmostWindow()
  if not win then
    hs.console.printStyledtext(action .. ": No window!")
    return
  end
  local f = win:frame()
  hs.console.printStyledtext(string.format("%s: %s | x=%.0f y=%.0f w=%.0f h=%.0f", action, win:title(), f.x, f.y, f.w,
    f.h))
end


hs.hotkey.bind({ "ctrl", "cmd" }, "h", function()
  focusWest()
  logWindowAction("Focus West")
end)
hs.hotkey.bind({ "ctrl", "cmd" }, "l", function()
  focusEast()
  logWindowAction("Focus East")
end)

hs.hotkey.bind({ "shift", "cmd" }, "h", function()
  MoveWindowWest()
  logWindowAction("Move Window West")
end)
hs.hotkey.bind({ "shift", "cmd" }, "l", function()
  MoveWindowEast()
  logWindowAction("Move Window East")
end)

hs.hotkey.bind({ "shift", "cmd" }, "space", function()
  toggleFillWindow()
  logWindowAction("Toggle Fill Window")
end)
hs.hotkey.bind({ "shift", "alt" }, "space", function()
  fillAllWindows()
  logWindowAction("Fill All Windows")
end)

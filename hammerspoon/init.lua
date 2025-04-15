hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.allowAppleScript(true)

hs.window.animationDuration = 0

function MoveWindowWest()
  local win = hs.window.frontmostWindow()
  if win then
    win:moveOneScreenWest()
  end
end

function MoveWindowEast()
  local win = hs.window.frontmostWindow()
  if win then
    win:moveOneScreenEast()
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

function FillWindow(win)
  win = win or hs.window.frontmostWindow()
  if not win then
    return
  end
  local screen = win:screen()
  local frame = screen:frame()
  local pad = 10
  win:setFrame({
    x = frame.x + pad,
    y = frame.y + pad,
    w = frame.w - 2 * pad,
    h = frame.h - 2 * pad,
  })
end

local function fillAllWindows()
  for _, win in ipairs(hs.window.allWindows()) do
    FillWindow(win)
  end
end

hs.hotkey.bind({ "ctrl", "cmd" }, "h", focusWest)
hs.hotkey.bind({ "ctrl", "cmd" }, "l", focusEast)

hs.hotkey.bind({ "shift", "cmd" }, "h", MoveWindowWest)
hs.hotkey.bind({ "shift", "cmd" }, "l", MoveWindowEast)

hs.hotkey.bind({ "shift", "cmd" }, "space", FillWindow)
hs.hotkey.bind({ "shift", "alt" }, "space", fillAllWindows)

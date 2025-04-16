local logger = {}

local function frameToStr(frame)
    return string.format("{x=%d,y=%d,w=%d,h=%d}", frame.x, frame.y, frame.w, frame.h)
end

---
-- Log a window movement action with window info and movement type
-- @param win hs.window: the window being moved
-- @param action string: the movement action (e.g. 'toggleFill', 'moveToHalf')
function logger.logWindowMove(win, action)
    if not win then return end
    local app = win:application()
    local frame = win:frame()
    print(string.format(
        "[WindowMove] [%s] App='%s' Title='%s' ID=%s Action=%s Position=%s",
        os.date("%Y-%m-%d %H:%M:%S"),
        app and app:name() or "?",
        win:title() or "?",
        win:id() or "?",
        action or "?",
        frameToStr(frame)
    ))
end

return logger

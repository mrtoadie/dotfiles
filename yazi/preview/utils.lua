cc-- ~/.config/yazi/preview/utils.lua
local M = {}

function M.max_width()
return tonumber(os.getenv("YAZI_PREVIEW_MAX_WIDTH") or "80")
end

function M.max_height()
return tonumber(os.getenv("YAZI_PREVIEW_MAX_HEIGHT") or "30")
end

function M.preview_x()
return tonumber(os.getenv("YAZI_PREVIEW_X") or "0")
end

function M.preview_y()
return tonumber(os.getenv("YAZI_PREVIEW_Y") or "0")
end

function M.is_kitty()
return os.getenv("TERM_PROGRAM") == "kitty"
end

function M.run(cmd)
return table.concat(cmd, " ")
end

function M.run_background(cmd)
-- Starte Prozess im Hintergrund, damit Yazi weiter reagiert
return table.concat(cmd, " ") .. " &"
end

function M.run_kitty_image(cmd)
-- Kitty‑Protokoll: einfaches cat reicht
return table.concat(cmd, " ")
end

return M

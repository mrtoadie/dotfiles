-- ~/.config/yazi/preview/image.lua
local utils = require("utils")

return function(file)
-- Prüfen, ob das Terminal Bildunterstützung hat (iTerm2, Kitty, …)
if utils.is_kitty() then
    -- Kitty‑Grafik‑Protokoll
    local cmd = { "cat", file.path }
    return utils.run_kitty_image(cmd)
    else
        -- Fallback: ueberzugpp (zeigt Bild im Terminal‑Overlay)
        local cmd = {
            "ueberzugpp",
            "layer", "0",
            "path", file.path,
            "x", tostring(utils.preview_x()),
            "y", tostring(utils.preview_y()),
            "width", tostring(utils.max_width()),
            "height", tostring(utils.max_height())
        }
        return utils.run_background(cmd)
        end
        end

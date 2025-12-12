-- ~/.config/yazi/preview/code.lua
local utils = require("utils")

return function(file)
-- `bat` liefert Syntax‑Highlighting + Zeilennummern
local cmd = { "bat", "--style=numbers,grid", "--color=always", "--theme=TwoDark", file.path }
return utils.run(cmd)
end

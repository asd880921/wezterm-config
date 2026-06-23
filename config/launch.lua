local platform = require("utils.platform")()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { "cmd" }
  options.launch_menu = {
    { label = " Cmd", args = { "cmd" } },
    { label = " PowerShell", args = { "powershell" } },
    { label = " PowerShell v7", args = { "pwsh" } },
    {
      label = " GitBash",
      args = { "C:\\Program Files\\Git\\bin\\bash.exe" },
    },
  }
elseif platform.is_mac then
  options.default_prog = { "/opt/homebrew/bin/fish", "--login" }
  options.launch_menu = {
    { label = " Bash", args = { "bash", "--login" } },
    { label = " Fish", args = { "/opt/homebrew/bin/fish", "--login" } },
    { label = " Nushell", args = { "/opt/homebrew/bin/nu", "--login" } },
    { label = " Zsh", args = { "zsh", "--login" } },
  }
elseif platform.is_linux then
  options.default_prog = { "bash", "--login" }
  options.launch_menu = {
    { label = " Bash", args = { "bash", "--login" } },
    { label = " Fish", args = { "/opt/homebrew/bin/fish", "--login" } },
    { label = " Nushell", args = { "/opt/homebrew/bin/nu", "--login" } },
    { label = " Zsh", args = { "zsh", "--login" } },
  }
end

return options

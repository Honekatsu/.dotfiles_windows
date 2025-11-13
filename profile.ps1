# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# 補完
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Alias
function ll { eza -l }
function lla { eza -la }
Set-Alias lg lazygit
Set-Alias vim nvim

# Starship
Invoke-Expression (&starship init powershell)

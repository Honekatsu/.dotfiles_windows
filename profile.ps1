# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# 補完
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Alias
function ll { eza -l }
function lla { eza -la }
Set-Alias lg lazygit

# Starship
Invoke-Expression (&starship init powershell)

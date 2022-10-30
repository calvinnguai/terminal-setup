# Alias
Set-Alias -Name vim -Value nvim

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Invoke starship
Invoke-Expression (&starship init powershell)
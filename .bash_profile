# Fix bash-like wildcard
setopt nonomatch

#  Set nvm environment variables
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# Disable dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1
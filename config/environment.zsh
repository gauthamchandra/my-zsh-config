#Log the command history with the time the command was last executed
export HISTTIMEFORMAT="%F %T "

if [ "$(uname)" = "Darwin" ]; then
  # Use brew libs over system libs
  export PATH=$PATH:/usr/local/bin

  # Use brew's version of vim if we are on OSX
  alias vim="/usr/local/bin/vim"

  # Export brew's version of curl
  #alias curl="/usr/local/Cellar/curl/7.46.0/bin/curl"
fi

export DEFAULT_USER=`whoami`

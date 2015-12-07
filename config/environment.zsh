#Log the command history with the time the command was last executed
export HISTTIMEFORMAT="%F %T "

# Use brew libs over system libs
export PATH=$PATH:/usr/local/bin

# Use brew's version of vim if we are on OSX
if [ "$(uname)" = "Darwin" ]; then
  alias vim="/usr/local/bin/vim"
fi

export DEFAULT_USER=`whoami`

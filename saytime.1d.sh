#!/bin/bash

# <bitbar.title>Speak time</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>Amit Rana</bitbar.author>
# <bitbar.author.github>amit0rana</bitbar.author.github>
# <bitbar.desc>This plugin will enable/diable speak time.</bitbar.desc>
# <bitbar.image></bitbar.image>
# <bitbar.dependencies></bitbar.dependencies>

SCRIPT_HOME=~/Projects/SayTime

[ "$1" == "enable" ] &&  rm -f /tmp/sayTime-pause || echo ''
[ "$1" == "disable" ] &&  touch /tmp/sayTime-pause || echo ''

[ -f /tmp/sayTime-pause ] && echo ":no_bell: | color=red" || echo ":bell: | color=green"
echo "---"
[ -f /tmp/sayTime-pause ] && echo "Enable SayTime  | terminal=false refresh=true bash=$0 param1=enable" || echo "Disable SayTime | bash=$0 param1=disable terminal=false refresh=true"

echo "Say now | terminal=false bash=$SCRIPT_HOME/say.sh"
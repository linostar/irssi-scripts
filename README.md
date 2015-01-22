# irssi-scripts
irssi scripts made for different purposes

# How to install and use scripts with irssi
Put the script file (.pl) in *~/.irssi/scripts/*, and then load it in irssi by typing: **/script load _scriptname.pl_**
To stop the script, type: **/script unload _scriptname.pl_**
You can make the script autorun by placing it (or placing a link to it) in *~/.irssi/scripts/autorun/*

# Scripts

## quickescape.pl
A script that is designed to automate the escape from #dontjoinitsatrap channel on Rizon network, or similar channels in other networks. The logic of the channel is simple: the user will be forced by the network to auto-rejoin if he/she were to leave by normal methods. One of the permitted ways to part the channel is when the TrapBot declares a small time frame (typically 1 minute) that allows users to leave. This script will auto-part from the channel when that happens.
You can change both the trapping channel name and bot name by changing the values of *quickescape_channel* and *quickescape_bot* respectively in irssi settings.

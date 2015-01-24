# irssi-scripts
irssi scripts made for different purposes

# How to install and use scripts with irssi
Put the script file (.pl) in *~/.irssi/scripts/*, and then load it in irssi by typing: **/script load _scriptname.pl_**

To stop the script, type: **/script unload _scriptname.pl_**

You can make the script autorun by placing it (or placing a link to it) in *~/.irssi/scripts/autorun/*

# Scripts

## kban-referrals.pl
A script that kickban users who post referral URLs. It can operate in paranoid mode or normal mode. In paranoid mode, any user posting in his message a URL that does not match a site in the whitelist will be kickbanned. In normal mode, the URL will be checked against a blacklist first, then the user will only get kickbanned if his URL doesn't match a site in the whitelist and he meets some criterion that identifies referral URLs.

**/kbanref** is the command name of the script. Typing **/kbanref** will only enumerate the sub-commands of the script. **/kbanref help** will list all the sub-commands with a short explanation for each.

## quickescape.pl
A script that is designed to automate the escape from #dontjoinitsatrap channel on Rizon network, or similar channels in other networks. The logic of the channel is simple: the user will be forced by the network to auto-rejoin if he/she were to leave by normal methods. One of the permitted ways to part the channel is when the TrapBot declares a small time frame (typically 1 minute) that allows users to leave. This script will auto-part from the channel when that happens.

You can change both the trapping channel name and bot name by changing the values of *quickescape_channel* and *quickescape_bot* respectively in irssi settings.

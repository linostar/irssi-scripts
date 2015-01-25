# QuickEscape
#
# A script that is designed to automate the escape from #dontjoinitsatrap channel on Rizon network, or similar channels in other networks.
# The logic of the channel is simple: the user will be forced by the network to auto-rejoin if he/she were to leave by normal methods.
# One of the permitted ways to part the channel is when the TrapBot declares a small time frame (typically 1 minute) that allows users to leave.
# This script will auto-part from the channel when that happens.
#
# Usage
#
# You can change both the trapping channel name and bot name by changing the values of *quickescape_channel* and *quickescape_bot* respectively in irssi settings.
# Other than that, the script is autonomous and no need for the user to intervene.
#
use strict;
use warnings;

use vars qw($VERSION %IRSSI);

use Irssi qw(command_bind signal_add settings_add_str settings_get_str);

our $VERSION = '1.00';
our %IRSSI = (authors => 'Linostar',
          contact => 'lino.star@outlook.com',
          name => 'Quick Escape Script',
          description => 'Quick Escape from Trap Channels',
          license => 'New BSD');

sub escape {
  my ($server, $msg, $nick, $nick_addr, $target) = @_;
  my $url = '(https://github.com/linostar/irssi-scripts)';
  my $chan = settings_get_str('quickescape_channel');
  my $bot = settings_get_str('quickescape_bot');
  if ($target =~ m/$chan/i && $nick =~ m/$bot/i) {
    $server->command("part $target Automated leaving script " . $url);
  }
}

settings_add_str('quickescape', 'quickescape_channel' => "dontjoinitsatrap");
settings_add_str('quickescape', 'quickescape_bot' => "trapbot");
signal_add('message public', 'escape');


use strict;
use warnings;

use vars qw($VERSION %IRSSI);

use Irssi qw(command_bind signal_add settings_add_str settings_get_str);

our $VERSION = '1.00';
our %IRSSI = (authors => 'Linostar',
          contact => 'https://github.com/linostar/irssi-scripts',
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


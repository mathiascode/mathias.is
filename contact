#!/usr/bin/perl
use CGI;
my $q = new CGI;

my $honeypot = $q->param('name');
my $email = email_filter($q->param('email'));
my $message = message_filter($q->param('message'));

if (($honeypot eq "") && ($email ne "") && ($message ne ""))
{
	open (SEND, "|/usr/lib/sendmail -t");
	print SEND "From: $email\n";
	print SEND "To: mail\@mathias.re\n";
	print SEND "Subject: Contact Form Submission\n\n";
	print SEND "$message\n";
	close (SEND);
}

print $q->redirect('/#sent');

sub email_filter
{
	my $email = shift;
	$email = message_filter($email);
	$email =~ s/[\0\n\r\|\!\/\<\>\^\$\%\*\&]+/ /g;
	return $email;
}

sub message_filter
{
	my $message = shift;
	$message =~ s/From://gi;
	$message =~ s/To://gi;
	$message =~ s/BCC://gi;
	$message =~ s/CC://gi;
	$message =~ s/Subject://gi;
	$message =~ s/Content-Type://gi;
	return $message;
}

package Openview::Message::opcmsg;

use 5.6.0;
use strict;
use warnings;

require Exporter;
require DynaLoader;
#require AutoLoader;
use Carp;

our @ISA = qw(Exporter DynaLoader);

our %EXPORT_TAGS = ( 'all' => [ qw(
) ] );

our @EXPORT_OK = qw(
   opcmsg   
   OPC_SEV_UNKNOWN
   OPC_SEV_UNCHANGED
   OPC_SEV_NONE
   OPC_SEV_NORMAL
   OPC_SEV_WARNING
   OPC_SEV_MINOR
   OPC_SEV_MAJOR
   OPC_SEV_CRITICAL
);
our @EXPORT = grep( !/_UN|_NONE/ ,@EXPORT_OK );
our $VERSION = '0.01';

bootstrap Openview::Message::opcmsg $VERSION; 

1;
__END__

=head1 NAME

Openview::Message::opcmsg - Perl extension for sending HP OpenView Operations
messages.

=head1 SYNOPSIS

   #low level access to the opcmsg API:
   use Openview::Message::opcmsg ;
   opcmsg( OPC_SEV_MINOR 
          ,'application' 
          ,'object' 
          ,'msg_text' 
          ,'msg_group' 
          ,hostname 
         );

=head1 DESCRIPTION

Openview::Message::opcmsg provides low level access to the HP Openview
operations opcmsg() library API.  This enables perl scripts to send
Openview messages without having to use system() calls or fork sub-process
processes. (i.e. it is much more efficient than the opcmsg command).

=head2 EXPORTS

The following symbols are exported by default:

   opcmsg
   OPC_SEV_NORMAL
   OPC_SEV_WARNING
   OPC_SEV_MINOR
   OPC_SEV_MAJOR
   OPC_SEV_CRITICAL


The following symbols may attitionally be imported, but are probably
not very useful:

   OPC_SEV_UNKNOWN
   OPC_SEV_UNCHANGED
   OPC_SEV_NONE

=head1 SEE ALSO

Openview::Message::Sender for an OO interface to this function,
which does not export symbols into the user's namespace.

=head1 AUTHOR

Lincoln A. Baxter E<lt>lbaxter@netreach.netE<gt>

=cut

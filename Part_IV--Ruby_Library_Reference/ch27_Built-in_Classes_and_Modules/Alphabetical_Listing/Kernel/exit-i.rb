U:RDoc::AnyMethod[iI"	exit:EFI"Kernel#exit;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"@Initiates the termination of the Ruby script by raising the;FI"I<code>SystemExit</code> exception. This exception may be caught. The;FI"Goptional parameter is used to return a status code to the invoking;FI"environment.;FI"=+true+ and +FALSE+ of _status_ means success and failure;FI"Brespectively.  The interpretation of other integer values are;FI"system dependent.;Fo:RDoc::Markup::BlankLine o:RDoc::Markup::Verbatim;	[I"   ;FI"
begin;FI"
;FI"
     ;FI"	exit;FI"
;FI"
     ;FI"puts "never get here";FI"
;FI"   ;FI"rescue SystemExit;FI"
;FI"
     ;FI"*puts "rescued a SystemExit exception";FI"
;FI"   ;FI"end;FI"
;FI"   ;FI"puts "after begin block";FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[I"   ;FI"#rescued a SystemExit exception;FI"
;FI"   ;FI"after begin block;FI"
;Fo;
;	[I"PJust prior to termination, Ruby executes any <code>at_exit</code> functions;FI">(see Kernel::at_exit) and runs any object finalizers (see;FI"$ObjectSpace::define_finalizer).;Fo; o;;	[I"   ;FI"(at_exit { puts "at_exit function" };FI"
;FI"   ;FI"JObjectSpace.define_finalizer("string",  proc { puts "in finalizer" });FI"
;FI"   ;FI"	exit;FI"
;Fo;
;	[I"<em>produces:</em>;Fo; o;;	[
I"   ;FI"at_exit function;FI"
;FI"   ;FI"in finalizer;FI"Lexit(status=true)
Kernel::exit(status=true)
Process::exit(status=true)
;F0[ I"
(...);F
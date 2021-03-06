U:RDoc::AnyMethod[iI"new:EFI"SystemCallError::new;FT:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[
I"DIf _errno_ corresponds to a known system error code, constructs;FI"Gthe appropriate <code>Errno</code> class for that error, otherwise;FI"Bconstructs a generic <code>SystemCallError</code> object. The;FI"Ferror number is subsequently available via the <code>errno</code>;FI"method.;FI"DSystemCallError.new(msg, errno)  -> system_call_error_subclass
;F0[ I"
(...);F
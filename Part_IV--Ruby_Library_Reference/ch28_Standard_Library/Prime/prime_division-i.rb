U:RDoc::AnyMethod[iI"prime_division:EFI"Prime#prime_division;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"*Returns the factorization of +value+.;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Parameters;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"+value+;F;	[o;
;	[I"An arbitrary integer.;Fo;;I"+generator+;F;	[o;
;	[
I"(Optional. A pseudo-prime generator.;FI"*+generator+.succ must return the next;FI")pseudo-prime number in the ascendent;FI"/order. It must generate all prime numbers,;FI"(but may generate non prime numbers.;Fo; S;;i;I"Exceptions;Fo;;;;[o;;I"+ZeroDivisionError+;F;	[o;
;	[I"when +value+ is zero.;Fo; S;;i;I"Example;Fo;
;	[	I"For an arbitrary integer;FI"/n = p_1**e_1 * p_2**e_2 * .... * p_n**e_n,;FI"prime_division(n) returns;FI"0[[p_1, e_1], [p_2, e_2], ...., [p_n, e_n]].;Fo; o:RDoc::Markup::Verbatim;	[I" ;FI"0Prime.prime_division(12) #=> [[2,2], [3,1]];F00[ I"/(value, generator= Prime::Generator23.new);F
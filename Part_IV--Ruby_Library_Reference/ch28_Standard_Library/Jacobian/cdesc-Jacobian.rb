U:RDoc::NormalModule[i I"Jacobian:EF@0o:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I""require 'bigdecimal/jacobian';Fo:RDoc::Markup::BlankLine o;	;[I"OProvides methods to compute the Jacobian matrix of a set of equations at a;FI"#point x. In the methods below:;Fo;
 o;	;[I"Rf is an Object which is used to compute the Jacobian matrix of the equations.;FI"+It must provide the following methods:;Fo;
 o:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"f.values(x);F;[o;	;[I"-returns the values of all functions at x;Fo;
 o;;I"f.zero;F;[o;	;[I"returns 0.0;Fo;;I"
f.one;F;[o;	;[I"returns 1.0;Fo;;I"
f.two;F;[o;	;[I"returns 1.0;Fo;;I"
f.ten;F;[o;	;[I"returns 10.0;Fo;
 o;;I"
f.eps;F;[o;	;[I"¥returns the convergence criterion (epsilon value) used to determine whether two values are considered equal. If |a-b| < epsilon, the two values are considered equal.;Fo;
 o;	;[I"5x is the point at which to compute the Jacobian.;Fo;
 o;	;[I"fx is f.values(x).;F[ [ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[I"
dfdxi;FI"isEqual;FI"jacobian;F[;[ [;[ 
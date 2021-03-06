U:RDoc::NormalModule[i I"
TSort:EF@0o:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;[I"FTSort implements topological sorting using Tarjan's algorithm for;FI"#strongly connected components.;Fo:RDoc::Markup::BlankLine o;	;[I"ITSort is designed to be able to be used with any object which can be;FI"%interpreted as a directed graph.;Fo;
 o;	;[I"BTSort requires two methods to interpret an object as a graph,;FI"*tsort_each_node and tsort_each_child.;Fo;
 o:RDoc::Markup::List:
@type:BULLET:@items[o:RDoc::Markup::ListItem:@label0;[o;	;[I"Ctsort_each_node is used to iterate for all nodes over a graph.;Fo;;0;[o;	;[I"Itsort_each_child is used to iterate for child nodes of a given node.;Fo;
 o;	;[I"=The equality of nodes are defined by eql? and hash since;FI" TSort uses Hash internally.;Fo;
 S:RDoc::Markup::Heading:
leveli:	textI"A Simple Example;Fo;
 o;	;[I"KThe following example demonstrates how to mix the TSort module into an;FI"Jexisting class (in this case, Hash). Here, we're treating each key in;FI"Ithe hash as a node in the graph, and so we simply alias the required;FI"L#tsort_each_node method to Hash's #each_key method. For each key in the;FI"Khash, the associated value is an array of the node's child nodes. This;FI"Qchoice in turn leads to our implementation of the required #tsort_each_child;FI"Omethod, which fetches the array of child nodes and then iterates over that;FI")array using the user-supplied block.;Fo;
 o:RDoc::Markup::Verbatim;[,I"  ;FI"require 'tsort';FI"
;FI"
;FI"  ;FI"class Hash;FI"
;FI"	    ;FI"include TSort;FI"
;FI"	    ;FI"#alias tsort_each_node each_key;FI"
;FI"	    ;FI"'def tsort_each_child(node, &block);FI"
;FI"      ;FI"fetch(node).each(&block);FI"
;FI"	    ;FI"end;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI",{1=>[2, 3], 2=>[3], 3=>[], 4=>[]}.tsort;FI"
;FI"  ;FI"#=> [3, 2, 1, 4];FI"
;FI"
;FI"  ;FI"E{1=>[2], 2=>[3, 4], 3=>[2], 4=>[]}.strongly_connected_components;FI"
;FI"  ;FI"#=> [[4], [2, 3], [1]];FI"
;FS;;i;I"A More Realistic Example;Fo;
 o;	;[I"BA very simple `make' like tool can be implemented as follows:;Fo;
 o;;[�I"  ;FI"require 'tsort';FI"
;FI"
;FI"  ;FI"class Make;FI"
;FI"	    ;FI"def initialize;FI"
;FI"      ;FI"@dep = {};FI"
;FI"      ;FI"@dep.default = [];FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI")def rule(outputs, inputs=[], &block);FI"
;FI"      ;FI"&triple = [outputs, inputs, block];FI"
;FI"      ;FI"*outputs.each {|f| @dep[f] = [triple]};FI"
;FI"      ;FI"@dep[triple] = inputs;FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"def build(target);FI"
;FI"      ;FI"9each_strongly_connected_component_from(target) {|ns|;FI"
;FI"        ;FI"if ns.length != 1;FI"
;FI"          ;FI"(fs = ns.delete_if {|n| Array === n};FI"
;FI"          ;FI"Draise TSort::Cyclic.new("cyclic dependencies: #{fs.join ', '}");FI"
;FI"        ;FI"end;FI"
;FI"        ;FI"n = ns.first;FI"
;FI"        ;FI"if Array === n;FI"
;FI"          ;FI"outputs, inputs, block = n;FI"
;FI"          ;FI"4inputs_time = inputs.map {|f| File.mtime f}.max;FI"
;FI"          ;FI"
begin;FI"
;FI"            ;FI"6outputs_time = outputs.map {|f| File.mtime f}.min;FI"
;FI"          ;FI"rescue Errno::ENOENT;FI"
;FI"            ;FI"outputs_time = nil;FI"
;FI"          ;FI"end;FI"
;FI"          ;FI"if outputs_time == nil ||;FI"
;FI"             ;FI"6inputs_time != nil && outputs_time <= inputs_time;FI"
;FI"            ;FI"Gsleep 1 if inputs_time != nil && inputs_time.to_i == Time.now.to_i;FI"
;FI"            ;FI"block.call;FI"
;FI"          ;FI"end;FI"
;FI"        ;FI"end;FI"
;FI"      ;FI"};FI"
;FI"	    ;FI"end;FI"
;FI"
;FI"	    ;FI"'def tsort_each_child(node, &block);FI"
;FI"      ;FI"@dep[node].each(&block);FI"
;FI"	    ;FI"end;FI"
;FI"	    ;FI"include TSort;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"def command(arg);FI"
;FI"	    ;FI"print arg, "\n";FI"
;FI"	    ;FI"system arg;FI"
;FI"  ;FI"end;FI"
;FI"
;FI"  ;FI"m = Make.new;FI"
;FI"  ;FI"+m.rule(%w[t1]) { command 'date > t1' };FI"
;FI"  ;FI"+m.rule(%w[t2]) { command 'date > t2' };FI"
;FI"  ;FI"+m.rule(%w[t3]) { command 'date > t3' };FI"
;FI"  ;FI";m.rule(%w[t4], %w[t1 t3]) { command 'cat t1 t3 > t4' };FI"
;FI"  ;FI";m.rule(%w[t5], %w[t4 t2]) { command 'cat t4 t2 > t5' };FI"
;FI"  ;FI"m.build('t5');FI"
;FS;;i;I"	Bugs;Fo;
 o;;;;[o;;0;[o;	;[I"7'tsort.rb' is wrong name because this library uses;FI":Tarjan's algorithm for strongly connected components.;FI"IAlthough 'strongly_connected_components.rb' is correct but too long.;Fo;
 S;;i;I"References;Fo;
 o;;:UALPHA;[o;;0;[o;;;;[o;;0;[o;	;[I">Tarjan, "Depth First Search and Linear Graph Algorithms",;Fo;	;[I"O<em>SIAM Journal on Computing</em>, Vol. 1, No. 2, pp. 146-160, June 1972.;F[ [ [ [[I"
class;F[[:public[ [:protected[ [:private[ [I"instance;F[[;[I"&each_strongly_connected_component;FI"+each_strongly_connected_component_from;FI""strongly_connected_components;FI"
tsort;FI"tsort_each;FI"tsort_each_child;FI"tsort_each_node;F[;[ [;[ 
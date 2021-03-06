U:RDoc::AnyMethod[iI"
write:EFI"REXML::Document#write;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"IWrite the XML tree out, optionally with indent.  This writes out the;FI"Kentire XML document, including XML declarations, doctype declarations,;FI"4and processing instructions (if any are given).;Fo:RDoc::Markup::BlankLine o;
;	[
I"JA controversial point is whether Document should always write the XML;FI"Kdeclaration (<?xml version='1.0'?>) whether or not one is given by the;FI"Huser (or source document).  REXML does not write one if one was not;FI"Jspecified, because it adds unnecessary bandwidth to applications such;FI"as XML-RPC.;Fo; o;
;	[I"LSee also the classes in the rexml/formatters package for the proper way;FI"3to change the default formatting of XML output;Fo; o;
;	[I"_Examples_;Fo:RDoc::Markup::Verbatim;	[I"  ;FI"*Document.new("<a><b/></a>").serialize;FI"
;FI"
;FI"  ;FI"output_string = "";FI"
;FI"  ;FI")tr = Transitive.new( output_string );FI"
;FI"  ;FI"0Document.new("<a><b/></a>").serialize( tr );FI"
;Fo:RDoc::Markup::List:
@type:	NOTE:@items[o:RDoc::Markup::ListItem:@labelI"output;F;	[o;
;	[I"Coutput an object which supports '<< string'; this is where the;Fo;;	[I"  ;FI"document will be written.;FI"
;Fo;;;;[o;;I"indent;F;	[o;
;	[	I"BAn integer.  If -1, no indenting will be used; otherwise, the;FI"Jindentation will be twice this number of spaces, and children will be;FI"Iindented an additional amount.  For a value of 3, every item will be;FI"Eindented 3 more levels, or 6 more spaces (2 * 3). Defaults to -1;Fo;;I"transitive;F;	[o;
;	[	I"FIf transitive is true and indent is >= 0, then the output will be;FI"Kpretty-printed in such a way that the added whitespace does not affect;FI"Ithe absolute *value* of the document -- that is, it leaves the value;FI"8and number of Text nodes in the document unchanged.;Fo;;I"ie_hack;F;	[o;
;	[
I"CInternet Explorer is the worst piece of crap to have ever been;FI"Iwritten, with the possible exception of Windows itself.  Since IE is;FI"Junable to parse proper XML, we have to provide a hack to generate XML;FI"Gthat IE's limited abilities can handle.  This hack inserts a space;FI"4before the /> on empty tags.  Defaults to false;F00[ I"C( output=$stdout, indent=-1, transitive=false, ie_hack=false );F
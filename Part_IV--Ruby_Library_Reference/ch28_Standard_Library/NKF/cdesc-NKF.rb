U:RDoc::NormalModule[i I"NKF:EF@0o:RDoc::Markup::Document:@parts[�o:RDoc::Markup::Paragraph;[I"2NKF - Ruby extension for Network Kanji Filter;Fo:RDoc::Markup::BlankLine S:RDoc::Markup::Heading:
leveli:	textI"Description;Fo;
 o;	;[I"DThis is a Ruby Extension version of nkf (Network Kanji Filter).;FI"LIt converts the first argument and returns converted result. Conversion;FI":details are specified by flags as the first argument.;Fo;
 o;	;[I"U*Nkf* is a yet another kanji code converter among networks, hosts and terminals.;FI":It converts input kanji code to designated kanji code;FI"=such as ISO-2022-JP, Shift_JIS, EUC-JP, UTF-8 or UTF-16.;Fo;
 o;	;[I"WOne of the most unique faculty of *nkf* is the guess of the input kanji encodings.;FI"NIt currently recognizes ISO-2022-JP, Shift_JIS, EUC-JP, UTF-8 and UTF-16.;FI":So users needn't set the input kanji code explicitly.;Fo;
 o;	;[	I"9By default, X0201 kana is converted into X0208 kana.;FI"BFor X0201 kana, SO/SI, SSO and ESC-(-I methods are supported.;FI"JFor automatic code detection, nkf assumes no X0201 kana in Shift_JIS.;FI"ITo accept X0201 in Shift_JIS, use <b>-X</b>, <b>-x</b> or <b>-S</b>.;Fo;
 S;;i;I"
Flags;Fo;
 S;;i;I"
-b -u;Fo;
 o;	;[I"8Output is buffered (DEFAULT), Output is unbuffered.;Fo;
 S;;i;I"-j -s -e -w -w16 -w32;Fo;
 o;	;[I">Output code is ISO-2022-JP (7bit JIS), Shift_JIS, EUC-JP,;FI" UTF-8N, UTF-16BE, UTF-32BE.;FI"DWithout this option and compile option, ISO-2022-JP is assumed.;Fo;
 S;;i;I"-J -S -E -W -W16 -W32;Fo;
 o;	;[I"6Input assumption is JIS 7 bit, Shift_JIS, EUC-JP,;FI"UTF-8, UTF-16, UTF-32.;Fo;
 S;;i	;I"-J;Fo;
 o;	;[I"/Assume  JIS input. It also accepts EUC-JP.;FI"?This is the default. This flag does not exclude Shift_JIS.;Fo;
 S;;i	;I"-S;Fo;
 o;	;[I"@Assume Shift_JIS and X0201 kana input. It also accepts JIS.;FI"@EUC-JP is recognized as X0201 kana. Without <b>-x</b> flag,;FI"9X0201 kana (halfwidth kana) is converted into X0208.;Fo;
 S;;i	;I"-E;Fo;
 o;	;[I".Assume EUC-JP input. It also accepts JIS.;FI"Same as -J.;Fo;
 S;;i;I"-t;Fo;
 o;	;[I"No conversion.;Fo;
 S;;i;I"-i_;Fo;
 o;	;[I"8Output sequence to designate JIS-kanji. (DEFAULT B);Fo;
 S;;i;I"-o_;Fo;
 o;	;[I"4Output sequence to designate ASCII. (DEFAULT B);Fo;
 S;;i;I"-r;Fo;
 o;	;[I"{de/en}crypt ROT13/47;Fo;
 S;;i;I"6-h[123] --hiragana --katakana --katakana-hiragana;Fo;
 o:RDoc::Markup::List:
@type:
LABEL:@items[o:RDoc::Markup::ListItem:@labelI"-h1 --hiragana;F;[o;	;[I"%Katakana to Hiragana conversion.;Fo;
 o;;I"-h2 --katakana;F;[o;	;[I"%Hiragana to Katakana conversion.;Fo;
 o;;I"-h3 --katakana-hiragana;F;[o;	;[I">Katakana to Hiragana and Hiragana to Katakana conversion.;Fo;
 S;;i;I"-T;Fo;
 o;	;[I"Text mode output (MS-DOS);Fo;
 S;;i;I"-l;Fo;
 o;	;[I" ISO8859-1 (Latin-1) support;Fo;
 S;;i;I"*-f[<code>m</code> [- <code>n</code>]];Fo;
 o;	;[I"KFolding on <code>m</code> length with <code>n</code> margin in a line.;FI"BWithout this option, fold length is 60 and fold margin is 10.;Fo;
 S;;i;I"-F;Fo;
 o;	;[I"&New line preserving line folding.;Fo;
 S;;i;I"-Z[0-3];Fo;
 o;	;[I";Convert X0208 alphabet (Fullwidth Alphabets) to ASCII.;Fo;
 o;;;;[	o;;I"-Z -Z0;F;[o;	;[I"%Convert X0208 alphabet to ASCII.;Fo;
 o;;I"-Z1;F;[o;	;[I"2Converts X0208 kankaku to single ASCII space.;Fo;
 o;;I"-Z2;F;[o;	;[I"3Converts X0208 kankaku to double ASCII spaces.;Fo;
 o;;I"-Z3;F;[o;	;[I"VReplacing Fullwidth >, <, ", & into '&gt;', '&lt;', '&quot;', '&amp;' as in HTML.;Fo;
 S;;i;I"
-X -x;Fo;
 o;	;[	I"#Assume X0201 kana in MS-Kanji.;FI"OWith <b>-X</b> or without this option, X0201 is converted into X0208 Kana.;FI"WWith <b>-x</b>, try to preserve X0208 kana and do not convert X0201 kana to X0208.;FI"@In JIS output, ESC-(-I is used. In EUC output, SSO is used.;Fo;
 S;;i;I"-B[0-2];Fo;
 o;	;[I"3Assume broken JIS-Kanji input, which lost ESC.;FI"=Useful when your site is using old B-News Nihongo patch.;Fo;
 o;;;;[o;;I"-B1;F;[o;	;[I"*allows any char after ESC-( or ESC-$.;Fo;
 o;;I"-B2;F;[o;	;[I"forces ASCII after NL.;Fo;
 S;;i;I"-I;Fo;
 o;	;[I"9Replacing non iso-2022-jp char into a geta character;FI"((substitute character in Japanese).;Fo;
 S;;i;I"
-d -c;Fo;
 o;	;[I"1Delete \r in line feed, Add \r in line feed.;Fo;
 S;;i;I"-m[BQN0];Fo;
 o;	;[I"1MIME ISO-2022-JP/ISO8859-1 decode. (DEFAULT);FI"0To see ISO8859-1 (Latin-1) -l is necessary.;Fo;
 o;;;;[o;;I"-mB;F;[o;	;[I"JDecode MIME base64 encoded stream. Remove header or other part before;Fo;	;[I"conversion.;Fo;
 o;;;;[o;;I"-mQ;F;[o;	;[I"KDecode MIME quoted stream. '_' in quoted stream is converted to space.;Fo;
 o;;I"-mN;F;[o;	;[I"Non-strict decoding.;Fo;	;[I"?It allows line break in the middle of the base64 encoding.;Fo;
 o;;;;[o;;I"-m0;F;[o;	;[I"No MIME decode.;Fo;
 S;;i;I"-M;Fo;
 o;	;[I"QMIME encode. Header style. All ASCII code and control characters are intact.;FI"`Kanji conversion is performed before encoding, so this cannot be used as a picture encoder.;Fo;
 o;;;;[o;;I"-MB;F;[o;	;[I"MIME encode Base64 stream.;Fo;
 o;;I"-MQ;F;[o;	;[I"Perfome quoted encoding.;Fo;
 S;;i;I"-l;Fo;
 o;	;[I"BInput and output code is ISO8859-1 (Latin-1) and ISO-2022-JP.;FI"L<b>-s</b>, <b>-e</b> and <b>-x</b> are not compatible with this option.;Fo;
 S;;i;I"-L[uwm];Fo;
 o;	;[I"new line mode;FI":Without this option, nkf doesn't convert line breaks.;Fo;
 o;;;;[o;;I"-Lu;F;[o;	;[I"unix (LF);Fo;
 o;;I"-Lw;F;[o;	;[I"windows (CRLF);Fo;
 o;;I"-Lm;F;[o;	;[I"mac (CR);Fo;
 S;;i;I"(--fj --unix --mac --msdos --windows;Fo;
 o;	;[I"convert for these system;Fo;
 S;;i;I"'--jis --euc --sjis --mime --base64;Fo;
 o;	;[I"convert for named code;Fo;
 S;;i;I"E--jis-input --euc-input --sjis-input --mime-input --base64-input;Fo;
 o;	;[I"assume input system;Fo;
 S;;i;I"E--ic=<code>input codeset</code> --oc=<code>output codeset</code>;Fo;
 o;	;[I"%Set the input or output codeset.;FI"QNKF supports following codesets and those codeset name are case insensitive.;Fo;
 o;;;;[o;;I"ISO-2022-JP;F;[o;	;[I"$a.k.a. RFC1468, 7bit JIS, JUNET;Fo;
 o;;I"EUC-JP (eucJP-nkf);F;[o;	;[I"(a.k.a. AT&T JIS, Japanese EUC, UJIS;Fo;
 o;;I"eucJP-ascii;F;[o;	;[I"'a.k.a. x-eucjp-open-19970715-ascii;Fo;
 o;;I"eucJP-ms;F;[o;	;[I"$a.k.a. x-eucjp-open-19970715-ms;Fo;
 o;;I"CP51932;F;[o;	;[I"!Microsoft Version of EUC-JP.;Fo;
 o;;I"Shift_JIS;F;[o;	;[I"SJIS, MS-Kanji;Fo;
 o;;I"Windows-31J;F;[o;	;[I"a.k.a. CP932;Fo;
 o;;I"
UTF-8;F;[o;	;[I"same as UTF-8N;Fo;
 o;;I"UTF-8N;F;[o;	;[I"UTF-8 without BOM;Fo;
 o;;I"UTF-8-BOM;F;[o;	;[I"UTF-8 with BOM;Fo;
 o;;I"UTF-16;F;[o;	;[I"same as UTF-16BE;Fo;
 o;;I"UTF-16BE;F;[o;	;[I""UTF-16 Big Endian without BOM;Fo;
 o;;I"UTF-16BE-BOM;F;[o;	;[I"UTF-16 Big Endian with BOM;Fo;
 o;;I"UTF-16LE;F;[o;	;[I"%UTF-16 Little Endian without BOM;Fo;
 o;;I"UTF-16LE-BOM;F;[o;	;[I""UTF-16 Little Endian with BOM;Fo;
 o;;I"UTF-32;F;[o;	;[I"same as UTF-32BE;Fo;
 o;;I"UTF-32BE;F;[o;	;[I""UTF-32 Big Endian without BOM;Fo;
 o;;I"UTF-32BE-BOM;F;[o;	;[I"UTF-32 Big Endian with BOM;Fo;
 o;;I"UTF-32LE;F;[o;	;[I"%UTF-32 Little Endian without BOM;Fo;
 o;;I"UTF-32LE-BOM;F;[o;	;[I""UTF-32 Little Endian with BOM;Fo;
 o;;I"UTF8-MAC;F;[o;	;[I".NKDed UTF-8, a.k.a. UTF8-NFD (input only);Fo;
 S;;i;I"0--fb-{skip, html, xml, perl, java, subchar};Fo;
 o;	;[I"<Specify the way that nkf handles unassigned characters.;FI"/Without this option, --fb-skip is assumed.;Fo;
 S;;i;I"M--prefix= <code>escape character</code> <code>target character</code> ..;Fo;
 o;	;[I"$When nkf converts to Shift_JIS,;FI"Ynkf adds a specified escape character to specified 2nd byte of Shift_JIS characters.;FI"\1st byte of argument is the escape character and following bytes are target characters.;Fo;
 S;;i;I"--no-cp932ext;Fo;
 o;	;[I"FHandle the characters extended in CP932 as unassigned characters.;Fo;
 S;;i;I"--no-best-fit-chars;Fo;
 o;	;[
I"-When Unicode to Encoded byte conversion,;FI";don't convert characters which is not round trip safe.;FI"(When Unicode to Unicode conversion,;FI"?with this and -x option, nkf can be used as UTF converter.;FI"S(In other words, without this and -x option, nkf doesn't save some characters);Fo;
 o;	;[I"NWhen nkf convert string which related to path, you should use this opion.;Fo;
 S;;i;I"--cap-input;Fo;
 o;	;[I"#Decode hex encoded characters.;Fo;
 S;;i;I"--url-input;Fo;
 o;	;[I")Unescape percent escaped characters.;Fo;
 S;;i;I"--;Fo;
 o;	;[I"Ignore rest of -option.;F[ [[I"	AUTO;Fo;;[ [I"NOCONV;Fo;;[ [I"UNKNOWN;Fo;;[ [I"BINARY;Fo;;[ [I"
ASCII;Fo;;[ [I"JIS;Fo;;[ [I"EUC;Fo;;[ [I"	SJIS;Fo;;[ [I"	UTF8;Fo;;[ [I"
UTF16;Fo;;[ [I"
UTF32;Fo;;[ [I"VERSION;Fo;;[o;	;[I""Full version string of nkf   ;F[I"NKF_VERSION;Fo;;[o;	;[I"Version of nkf   ;F[I"NKF_RELEASE_DATE;Fo;;[o;	;[I"Release date of nkf   ;F[ [[I"
class;F[[:public[I"
guess;FI"nkf;F[:protected[ [:private[ [I"instance;F[[;[ [;[ [;[ 
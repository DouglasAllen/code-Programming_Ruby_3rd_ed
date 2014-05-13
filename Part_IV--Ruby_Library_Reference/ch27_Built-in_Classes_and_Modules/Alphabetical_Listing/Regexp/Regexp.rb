# regexp.rb

=begin

= Regexp < Object

(from ~/.ri)
------------------------------------------------------------------------------
A Regexp holds a regular expression, used to match a pattern against strings.
Regexps are created using the /.../ and %r{...} literals, and by the
Regexp::new constructor.

Regular expressions (regexps) are patterns which describe the
contents of a string. They're used for testing whether a string contains a
given pattern, or extracting the portions that match. They are created with
the /pat/ and %r{pat} literals or the Regexp.new constructor.

A regexp is usually delimited with forward slashes (/). For example:

  /hay/ =~ 'haystack'   #=> 0
  /y/.match('haystack') #=> #<MatchData "y">

If a string contains the pattern it is said to match. A literal
string matches itself.

  # 'haystack' does not contain the pattern 'needle', so doesn't match.
  /needle/.match('haystack') #=> nil
  # 'haystack' does contain the pattern 'hay', so it matches
  /hay/.match('haystack')    #=> #<MatchData "hay">

Specifically, /st/ requires that the string contains the letter s followed
by the letter t, so it matches haystack, also.

== Metacharacters and Escapes

The following are metacharacters (, ), [, ], {, },
., ?, +, *. They have a specific meaning when appearing in a pattern. To match
them literally they must be backslash-escaped. To match a backslash literally
backslash-escape that: <tt>\\\\</tt>.

  /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?') #=> #<MatchData "1 + 2 = 3?">

Patterns behave like double-quoted strings so can contain the same backslash
escapes.

  /\s\u{6771 4eac 90fd}/.match("Go to 東京都")
      #=> #<MatchData " 東京都">

Arbitrary Ruby expressions can be embedded into patterns with the #{...}
construct.

  place = "東京都"
  /#{place}/.match("Go to 東京都")
      #=> #<MatchData "東京都">

== Character Classes

A character class is delimited with square
brackets ([, ]) and lists characters that may appear at that point in the
match. /[ab]/ means a or b, as opposed to /ab/ which means a followed by
b.

  /W[aeiou]rd/.match("Word") #=> #<MatchData "Word">

Within a character class the hyphen (-) is a metacharacter denoting an
inclusive Regexp of characters. [abcd] is equivalent to [a-d]. A Regexp can be
followed by another Regexp, so [abcdwxyz] is equivalent to [a-dw-z]. The order
in which Regexps or individual characters appear inside a character class is
irrelevant.

  /[0-9a-f]/.match('9f') #=> #<MatchData "9">
  /[9f]/.match('9f')     #=> #<MatchData "9">

If the first character of a character class is a caret (^) the class is
inverted: it matches any character except those named.

  /[^a-eg-z]/.match('f') #=> #<MatchData "f">

A character class may contain another character class. By itself this isn't
useful because [a-z[0-9]] describes the same set as [a-z0-9]. However,
character classes also support the && operator which performs set intersection
on its arguments. The two can be combined as follows:

  /[a-w&&[^c-g]z]/ # ([a-w] AND ([^c-g] OR z))
  # This is equivalent to:
  /[abh-w]/

The following metacharacters also behave like character classes:

* /./ - Any character except a newline.
* /./m - Any character (the m modifier enables multiline mode)
* /\w/ - A word character ([a-zA-Z0-9_])
* /\W/ - A non-word character ([^a-zA-Z0-9_])
* /\d/ - A digit character ([0-9])
* /\D/ - A non-digit character ([^0-9])
* /\h/ - A hexdigit character ([0-9a-fA-F])
* /\H/ - A non-hexdigit character ([^0-9a-fA-F])
* /\s/ - A whitespace character: /[ \t\r\n\f]/
* /\S/ - A non-whitespace character: /[^ \t\r\n\f]/

POSIX bracket expressions are also
similar to character classes. They provide a portable alternative to the
above, with the added benefit that they encompass non-ASCII characters. For
instance, /\d/ matches only the ASCII decimal digits (0-9); whereas
/[[:digit:]]/ matches any character in the Unicode Nd category.

* /[[:alnum:]]/ - Alphabetic and numeric character
* /[[:alpha:]]/ - Alphabetic character
* /[[:blank:]]/ - Space or tab
* /[[:cntrl:]]/ - Control character
* /[[:digit:]]/ - Digit
* /[[:graph:]]/ - Non-blank character (excludes spaces, control characters,
  and similar)
* /[[:lower:]]/ - Lowercase alphabetical character
* /[[:print:]]/ - Like [:graph:], but includes the space character
* /[[:punct:]]/ - Punctuation character
* /[[:space:]]/ - Whitespace character ([:blank:], newline,
    carriage return, etc.)

* /[[:upper:]]/ - Uppercase alphabetical
* /[[:xdigit:]]/ - Digit allowed in a hexadecimal number (i.e., 0-9a-fA-F)

Ruby also supports the following non-POSIX character classes:

* /[[:word:]]/ - A character in one of the following Unicode general
  categories Letter, Mark, Number,
  Connector_Punctuation
* /[[:ascii:]]/ - A character in the ASCII character set

    # U+06F2 is "EXTENDED ARABIC-INDIC DIGIT TWO"
    /[[:digit:]]/.match("\u06F2")    #=> #<MatchData "\u{06F2}">
    /[[:upper:]][[:lower:]]/.match("Hello") #=> #<MatchData "He">
    /[[:xdigit:]][[:xdigit:]]/.match("A6")  #=> #<MatchData "A6">

== Repetition

The constructs described so far match a single character. They can be followed
by a repetition metacharacter to specify how many times they need to occur.
Such metacharacters are called quantifiers.

* * - Zero or more times
* + - One or more times
* ? - Zero or one times (optional)
* {n} - Exactly n times
* {n,} - n or more times
* {,m} - m or less times
* {n,m} - At least n and at most m times

    # At least one uppercase character ('H'), at least one lowercase
    # character ('e'), two 'l' characters, then one 'o'
    "Hello".match(/[[:upper:]]+[[:lower:]]+l{2}o/) #=> #<MatchData "Hello">

Repetition is greedy by default: as many occurrences as possible
are matched while still allowing the overall match to succeed. By contrast,
lazy matching makes the minimal amount of matches necessary for
overall success. A greedy metacharacter can be made lazy by following it with
?.

  # Both patterns below match the string. The first uses a greedy
  # quantifier so '.+' matches '<a><b>'; the second uses a lazy
  # quantifier so '.+?' matches '<a>'.
  /<.+>/.match("<a><b>")  #=> #<MatchData "<a><b>">
  /<.+?>/.match("<a><b>") #=> #<MatchData "<a>">

A quantifier followed by + matches possessively: once
it has matched it does not backtrack. They behave like greedy quantifiers, but
having matched they refuse to "give up" their match even if this jeopardises
the overall match.

== Capturing

Parentheses can be used for capturing. The text enclosed by
the n<sup>th</sup> group of parentheses can be subsequently referred to with
n. Within a pattern use the backreference
</tt>n; outside of the pattern use <tt>MatchData[n].

  # 'at' is captured by the first group of parentheses, then referred to
  # later with \1
  /[csh](..) [csh]\1 in/.match("The cat sat in the hat")
      #=> #<MatchData "cat sat in" 1:"at">
  # Regexp#match returns a MatchData object which makes the captured
  # text available with its #[] method.
  /[csh](..) [csh]\1 in/.match("The cat sat in the hat")[1] #=> 'at'

Capture groups can be referred to by name when defined with the
(?<name>) or (?'name') constructs.

  /\$(?<dollars>\d+)\.(?<cents>\d+)/.match("$3.67")
      => #<MatchData "$3.67" dollars:"3" cents:"67">
  /\$(?<dollars>\d+)\.(?<cents>\d+)/.match("$3.67")[:dollars] #=> "3"

Named groups can be backreferenced with \k<name>, where name
is the group name.

  /(?<vowel>[aeiou]).\k<vowel>.\k<vowel>/.match('ototomy')
      #=> #<MatchData "ototo" vowel:"o">

Note: A regexp can't use named backreferences and numbered
backreferences simultaneously.

When named capture groups are used with a literal regexp on the left-hand side
of an expression and the =~ operator, the captured text is also assigned to
local variables with corresponding names.

  /\$(?<dollars>\d+)\.(?<cents>\d+)/ =~ "$3.67" #=> 0
  dollars #=> "3"

== Grouping

Parentheses also group the terms they enclose, allowing them to be
quantified as one atomic whole.

  # The pattern below matches a vowel followed by 2 word characters:
  # 'aen'
  /[aeiou]\w{2}/.match("Caenorhabditis elegans") #=> #<MatchData "aen">
  # Whereas the following pattern matches a vowel followed by a word
  # character, twice, i.e. <tt>[aeiou]\w[aeiou]\w</tt>: 'enor'.
  /([aeiou]\w){2}/.match("Caenorhabditis elegans")
      #=> #<MatchData "enor" 1:"or">

The (?:...) construct provides grouping without capturing. That is, it
combines the terms it contains into an atomic whole without creating a
backreference. This benefits performance at the slight expense of readabilty.

  # The group of parentheses captures 'n' and the second 'ti'. The
  # second group is referred to later with the backreference \2
  /I(n)ves(ti)ga\2ons/.match("Investigations")
      #=> #<MatchData "Investigations" 1:"n" 2:"ti">
  # The first group of parentheses is now made non-capturing with '?:',
  # so it still matches 'n', but doesn't create the backreference. Thus,
  # the backreference \1 now refers to 'ti'.
  /I(?:n)ves(ti)ga\1ons/.match("Investigations")
      #=> #<MatchData "Investigations" 1:"ti">

=== Atomic Grouping

Grouping can be made atomic with (?>pat). This causes the
subexpression pat to be matched independently of the rest of the
expression such that what it matches becomes fixed for the remainder of the
match, unless the entire subexpression must be abandoned and subsequently
revisited. In this way pat is treated as a non-divisible whole. Atomic
grouping is typically used to optimise patterns so as to prevent the regular
expression engine from backtracking needlesly.

  # The <tt>"</tt> in the pattern below matches the first character of
  # the string, then <tt>.*</tt> matches <i>Quote"</i>. This causes the
  # overall match to fail, so the text matched by <tt>.*</tt> is
  # backtracked by one position, which leaves the final character of the
  # string available to match <tt>"</tt>
        /".*"/.match('"Quote"')     #=> #<MatchData "\"Quote\"">
  # If <tt>.*</tt> is grouped atomically, it refuses to backtrack
  # <i>Quote"</i>, even though this means that the overall match fails
  /"(?>.*)"/.match('"Quote"') #=> nil

== Subexpression Calls

The \g<name> syntax matches the previous subexpression named
name, which can be a group name or number, again. This differs from
backreferences in that it re-executes the group rather than simply trying to
re-match the same text.

  # Matches a <i>(</i> character and assigns it to the <tt>paren</tt>
  # group, tries to call that the <tt>paren</tt> sub-expression again
  # but fails, then matches a literal <i>)</i>.
  /\A(?<paren>\(\g<paren>*\))*\z/ =~ '()'

  /\A(?<paren>\(\g<paren>*\))*\z/ =~ '(())' #=> 0
  # ^1
  #      ^2
  #           ^3
  #                 ^4
  #      ^5
  #           ^6
  #                      ^7
  #                       ^8
  #                       ^9
  #                           ^10

1. Matches at the beginning of the string, i.e. before the first character.
2. Enters a named capture group called paren
3. Matches a literal (, the first character in the string
4. Calls the paren group again, i.e. recurses back to the second step
5. Re-enters the paren group
6. Matches a literal (, the second character in the string
7. Try to call paren a third time, but fail because doing so would prevent an
   overall successful match
8. Match a literal ), the third character in the string. Marks the end of
   the second recursive call
9. Match a literal ), the fourth character in the string
10. Match the end of the string

== Alternation

The vertical bar metacharacter (|) combines two expressions into a single one
that matches either of the expressions. Each expression is an
alternative.

  /\w(and|or)\w/.match("Feliformia") #=> #<MatchData "form" 1:"or">
  /\w(and|or)\w/.match("furandi")    #=> #<MatchData "randi" 1:"and">
  /\w(and|or)\w/.match("dissemblance") #=> nil

== Character Properties

The \p{} construct matches characters with the named property, much like POSIX
bracket classes.

* /\p{Alnum}/ - Alphabetic and numeric character
* /\p{Alpha}/ - Alphabetic character
* /\p{Blank}/ - Space or tab
* /\p{Cntrl}/ - Control character
* /\p{Digit}/ - Digit
* /\p{Graph}/ - Non-blank character (excludes spaces, control characters, and
  similar)
* /\p{Lower}/ - Lowercase alphabetical character
* /\p{Print}/ - Like \p{Graph}, but includes the space character
* /\p{Punct}/ - Punctuation character
* /\p{Space}/ - Whitespace character ([:blank:], newline, carriage return,
  etc.)
* /\p{Upper}/ - Uppercase alphabetical
* /\p{XDigit}/ - Digit allowed in a hexadecimal number (i.e., 0-9a-fA-F)
* /\p{Word}/ - A member of one of the following Unicode general category
  Letter, Mark, Number,
  Connector_Punctuation
* /\p{ASCII}/ - A character in the ASCII character set
* /\p{Any}/ - Any Unicode character (including unassigned characters)
* /\p{Assigned}/ - An assigned character

A Unicode character's General Category value
can also be matched with \p{Ab} where Ab is the category's
abbreviation as described below:

* /\p{L}/  - 'Letter'
* /\p{Ll}/ - 'Letter: Lowercase'
* /\p{Lm}/ - 'Letter: Mark'
* /\p{Lo}/ - 'Letter: Other'
* /\p{Lt}/ - 'Letter: Titlecase'
* /\p{Lu}/ - 'Letter: Uppercase
* /\p{Lo}/ - 'Letter: Other'
* /\p{M}/  - 'Mark'
* /\p{Mn}/ - 'Mark: Nonspacing'
* /\p{Mc}/ - 'Mark: Spacing Combining'
* /\p{Me}/ - 'Mark: Enclosing'
* /\p{N}/  - 'Number'
* /\p{Nd}/ - 'Number: Decimal Digit'
* /\p{Nl}/ - 'Number: Letter'
* /\p{No}/ - 'Number: Other'
* /\p{P}/  - 'Punctuation'
* /\p{Pc}/ - 'Punctuation: Connector'
* /\p{Pd}/ - 'Punctuation: Dash'
* /\p{Ps}/ - 'Punctuation: Open'
* /\p{Pe}/ - 'Punctuation: Close'
* /\p{Pi}/ - 'Punctuation: Initial Quote'
* /\p{Pf}/ - 'Punctuation: Final Quote'
* /\p{Po}/ - 'Punctuation: Other'
* /\p{S}/  - 'Symbol'
* /\p{Sm}/ - 'Symbol: Math'
* /\p{Sc}/ - 'Symbol: Currency'
* /\p{Sc}/ - 'Symbol: Currency'
* /\p{Sk}/ - 'Symbol: Modifier'
* /\p{So}/ - 'Symbol: Other'
* /\p{Z}/  - 'Separator'
* /\p{Zs}/ - 'Separator: Space'
* /\p{Zl}/ - 'Separator: Line'
* /\p{Zp}/ - 'Separator: Paragraph'
* /\p{C}/  - 'Other'
* /\p{Cc}/ - 'Other: Control'
* /\p{Cf}/ - 'Other: Format'
* /\p{Cn}/ - 'Other: Not Assigned'
* /\p{Co}/ - 'Other: Private Use'
* /\p{Cs}/ - 'Other: Surrogate'

Lastly, \p{} matches a character's Unicode script. The following
scripts are supported: 
Arabic, Armenian,
Balinese, Bengali, Bopomofo,
Braille, Buginese, Buhid,
Canadian_Aboriginal, Carian,
Cham, Cherokee, Common,
Coptic, Cuneiform, Cypriot,
Cyrillic, 
Deseret, Devanagari,
Ethiopic,
Georgian, Glagolitic, Gothic,
Greek, Gujarati, Gurmukhi,
Han, Hangul, Hanunoo,
Hebrew, Hiragana, 
Inherited, 
Kannada, Katakana, Kayah_Li,
Kharoshthi, Khmer, 
Lao, Latin, Lepcha, 
Limbu, Linear_B, Lycian, Lydian, 
Malayalam, Mongolian, Myanmar,
New_Tai_Lue, Nko, 
Ogham, Ol_Chiki, Old_Italic,
Old_Persian, Oriya, Osmanya,
Phags_Pa, Phoenician, 
Rejang, Runic, 
Saurashtra, Shavian,
Sinhala, Sundanese,
Syloti_Nagri, Syriac,
Tagalog, Tagbanwa, Tai_Le,
Tamil, Telugu, Thaana, Thai,
Tibetan, Tifinagh, 
Ugaritic,
Vai, and Yi.

  # Unicode codepoint U+06E9 is named "ARABIC PLACE OF SAJDAH" and
  # belongs to the Arabic script.
  /\p{Arabic}/.match("\u06E9") #=> #<MatchData "\u06E9">

All character properties can be inverted by prefixing their name with a caret
(^).

  # Letter 'A' is not in the Unicode Ll (Letter; Lowercase) category, so
  # this match succeeds
  /\p{^Ll}/.match("A") #=> #<MatchData "A">

== Anchors

Anchors are metacharacter that match the zero-width positions between
characters, anchoring the match to a specific position.

* ^ - Matches beginning of line
* $ - Matches end of line
* \A - Matches beginning of string.
* \Z - Matches end of string. If string ends with a newline, it matches just
  before newline
* \z - Matches end of string
* \G - Matches point where last match finished
* \b - Matches word boundaries when outside brackets; backspace (0x08) when
  inside brackets
* \B - Matches non-word boundaries
* (?=pat) - Positive lookahead
  assertion: ensures that the following characters match pat, but
  doesn't include those characters in the matched text
* (?!pat) - Negative lookahead
  assertion: ensures that the following characters do not match pat, but
  doesn't include those characters in the matched text
* (?<=pat) - Positive lookbehind
  assertion: ensures that the preceding characters match pat, but
  doesn't include those characters in the matched text
* (?<!pat) - Negative lookbehind
  assertion: ensures that the preceding characters do not match pat, but
  doesn't include those characters in the matched text

    # If a pattern isn't anchored it can begin at any point in the string
    /real/.match("surrealist") #=> #<MatchData "real">
    # Anchoring the pattern to the beginning of the string forces the
    # match to start there. 'real' doesn't occur at the beginning of the
    # string, so now the match fails
    /\Areal/.match("surrealist") #=> nil
    # The match below fails because although 'Demand' contains 'and', the
    pattern does not occur at a word boundary.
    /\band/.match("Demand")
    # Whereas in the following example 'and' has been anchored to a
    # non-word boundary so instead of matching the first 'and' it matches
    # from the fourth letter of 'demand' instead
    /\Band.+/.match("Supply and demand curve") #=> #<MatchData "and curve">
    # The pattern below uses positive lookahead and positive lookbehind to
    # match text appearing in <b></b> tags without including the tags in the
    # match
    /(?<=<b>)\w+(?=<\/b>)/.match("Fortune favours the <b>bold</b>")
        #=> #<MatchData "bold">

== Options

The end delimiter for a regexp can be followed by one or more single-letter
options which control how the pattern can match.

* /pat/i - Ignore case
* /pat/m - Treat a newline as a character matched by .
* /pat/x - Ignore whitespace and comments in the pattern
* /pat/o - Perform #{} interpolation only once

i, m, and x can also be applied on the subexpression level with the
(?on-off) construct, which enables options on, and disables
options off for the expression enclosed by the parentheses.

  /a(?i:b)c/.match('aBc') #=> #<MatchData "aBc">
  /a(?i:b)c/.match('abc') #=> #<MatchData "abc">

== Free-Spacing Mode and Comments

As mentioned above, the x option enables free-spacing
mode. Literal white space inside the pattern is ignored, and the octothorpe
(#) character introduces a comment until the end of the line. This allows the
components of the pattern to be organised in a potentially more readable
fashion.

  # A contrived pattern to match a number with optional decimal places
  float_pat = /\A
      [[:digit:]]+ # 1 or more digits before the decimal point
      (\.          # Decimal point
          [[:digit:]]+ # 1 or more digits after the decimal point
      )? # The decimal point and following digits are optional
  \Z/x
  float_pat.match('3.14') #=> #<MatchData "3.14" 1:".14">

Note: To match whitespace in an x pattern use an escape such as \s or
\p{Space}.

Comments can be included in a non-x pattern with the (?#comment)
construct, where comment is arbitrary text ignored by the regexp
engine.

== Encoding

Regular expressions are assumed to use the source encoding. This can be
overridden with one of the following modifiers.

* /pat/u - UTF-8
* /pat/e - EUC-JP
* /pat/s - Windows-31J
* /pat/n - ASCII-8BIT

A regexp can be matched against a string when they either share an encoding,
or the regexp's encoding is US-ASCII and the string's encoding
is ASCII-compatible.

If a match between incompatible encodings is attempted an
Encoding::CompatibilityError exception is raised.

The Regexp#fixed_encoding? predicate indicates whether the regexp has a
fixed encoding, that is one incompatible with ASCII. A regexp's
encoding can be explicitly fixed by supplying Regexp::FIXEDENCODING as the
second argument of Regexp.new:

  r = Regexp.new("a".force_encoding("iso-8859-1"),Regexp::FIXEDENCODING)
  r =~"a\u3042"
     #=> Encoding::CompatibilityError: incompatible encoding regexp match
          (ISO-8859-1 regexp with UTF-8 string)

== Performance

Certain pathological combinations of constructs can lead to abysmally bad
performance.

Consider a string of 25 as, a d, 4 as, and a c.

  s = 'a' * 25 + 'd' 'a' * 4 + 'c'
      #=> "aaaaaaaaaaaaaaaaaaaaaaaaadadadadac"

The following patterns match instantly as you would expect:

  /(b|a)/ =~ s #=> 0
  /(b|a+)/ =~ s #=> 0
  /(b|a+)*\/ =~ s #=> 0

However, the following pattern takes appreciably longer:

  /(b|a+)*c/ =~ s #=> 32

This happens because an atom in the regexp is quantified by both an immediate
+ and an enclosing * with nothing to differentiate which is in control of any
particular character. The nondeterminism that results produces super-linear
performance. (Consult Mastering Regular
Expressions (3rd ed.), pp 222, by
Jeffery Friedl, for an in-depth analysis). This
particular case can be fixed by use of atomic grouping, which prevents the
unnecessary backtracking:

  (start = Time.now) && /(b|a+)*c/ =~ s && (Time.now - start)
     #=> 24.702736882
  (start = Time.now) && /(?>b|a+)*c/ =~ s && (Time.now - start)
     #=> 0.000166571

A similar case is typified by the following example, which takes approximately
60 seconds to execute for me:

  # Match a string of 29 <i>a</i>s against a pattern of 29 optional
  # <i>a</i>s followed by 29 mandatory <i>a</i>s.
  Regexp.new('a?' * 29 + 'a' * 29) =~ 'a' * 29
  # <i>a</i>s followed by 29 mandatory <i>a</i>s.
  Regexp.new('a?' * 29 + 'a' * 29) =~ 'a' * 29

The 29 optional as match the string, but this prevents the 29 mandatory as
that follow from matching. Ruby must then backtrack repeatedly so as to
satisfy as many of the optional matches as it can while still matching the
mandatory 29. It is plain to us that none of the optional matches can succeed,
but this fact unfortunately eludes Ruby.

One approach for improving performance is to anchor the match to the beginning
of the string, thus significantly reducing the amount of backtracking needed.

  Regexp.new('\A' 'a?' * 29 + 'a' * 29).match('a' * 29)
      #=> #<MatchData "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa">

Regexp serialization/deserialization
------------------------------------------------------------------------------
= Constants:

EXTENDED:
  see Regexp.options and Regexp.new 


FIXEDENCODING:
  see Regexp.options and Regexp.new 


IGNORECASE:
  see Regexp.options and Regexp.new 


MULTILINE:
  see Regexp.options and Regexp.new 


NOENCODING:
  see Regexp.options and Regexp.new 


= Class methods:

  compile, escape, json_create, last_match, new, quote, try_convert, union

= Instance methods:

  ==, ===, =~, as_json, casefold?, encoding, eql?, fixed_encoding?, hash,
  inspect, match, named_captures, names, options, source, to_json, to_s, ~

(from gem activesupport-3.2.6)
------------------------------------------------------------------------------
= Instance methods:

  as_json

(from gem json-1.7.1)
------------------------------------------------------------------------------
Regexp serialization/deserialization
------------------------------------------------------------------------------
= Class methods:

  json_create

= Instance methods:

  as_json, to_json

=end

# ruby Regexp.rb

r0 = /hay/
r1 = %r{hay}
r2 = Regexp.new('hay')
p r0, r1, r2 
 
Regexp.public_methods(false).sort.each do |method| 
  puts method
end
puts
Regexp.public_instance_methods(false).sort.each do |method| 
  puts method
end
puts
Regexp.constants.sort.each do |constant| 
  puts constant
end

puts
puts Regexp.superclass
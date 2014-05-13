=begin

Time < Object

------------------------------------------------------------------------------
Includes:
Comparable (from ~/.rdoc)

(from ~/.rdoc)
------------------------------------------------------------------------------
Time is an abstraction of dates and times. Time isstored internally as
the number of seconds with fraction sincethe Epoch, January 1, 1970
00:00 UTC.Also see the library modules Date.The Time class
treats GMT (Greenwich Mean Time) andUTC (Coordinated Universal Time)[Yes,
UTC really does stand forCoordinated Universal Time. There was a committee
involved.]as equivalent.  GMT is the older way of referring to
thesebaseline times but persists in the names of calls on POSIXsystems.

All times may have fraction. Be aware ofthis fact when comparing times with
each other---times that areapparently equal when displayed may be different
when compared.



Implements the extensions to the Time class that are described in
thedocumentation for the time.rb library.

Time serialization/deserialization
------------------------------------------------------------------------------
Constants:

CommonYearMonthDays:
  [not documented]

LeapYearMonthDays:
  [not documented]

MonthValue:
  [not documented]

RFC2822_DAY_NAME:
  [not documented]

RFC2822_MONTH_NAME:
  [not documented]

ZoneOffset:
  [not documented]


Class methods:

  _load
  at
  gm
  httpdate
  iso8601
  json_create
  local
  mktime
  new
  now
  parse
  rfc2822
  rfc822
  strptime
  utc
  w3cdtf
  xmlschema
  zone_offset

Instance methods:

  +
  -
  <=>
  _dump
  as_json
  asctime
  ctime
  day
  dst?
  eql?
  friday?
  getgm
  getlocal
  getutc
  gmt?
  gmt_offset
  gmtime
  gmtoff
  hash
  hour
  httpdate
  inspect
  isdst
  iso8601
  localtime
  marshal_dump
  marshal_load
  mday
  min
  mon
  monday?
  month
  nsec
  rake_original_time_compare
  rfc2822
  rfc822
  round
  saturday?
  sec
  strftime
  subsec
  succ
  sunday?
  thursday?
  to_a
  to_date
  to_datetime
  to_f
  to_i
  to_json
  to_r
  to_s
  to_time
  tuesday?
  tv_nsec
  tv_sec
  tv_usec
  usec
  utc
  utc?
  utc_offset
  w3cdtf
  wday
  wednesday?
  xmlschema
  yday
  year
  zone
  
=end
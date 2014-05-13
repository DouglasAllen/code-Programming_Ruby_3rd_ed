U:RDoc::AnyMethod[iI"	wait:EFI")MonitorMixin::ConditionVariable#wait;FF:publico:RDoc::Markup::Document:@parts[o:RDoc::Markup::Paragraph;	[I"_Releases the lock held in the associated monitor and waits; reacquires the lock on wakeup.;Fo:RDoc::Markup::BlankLine o;
;	[I"OIf +timeout+ is given, this method returns after +timeout+ seconds passed,;FI",even if no other thread doesn't signal.;F00[ I"(timeout = nil);F
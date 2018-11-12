parsing
parse: aString timeout: mSec
	|res p |
	p := [ res := self parse: aString ] fork.
	(Delay forMilliseconds: mSec) wait.
	p terminate.
	^ res
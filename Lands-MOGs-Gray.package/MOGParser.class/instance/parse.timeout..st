parsing
parse: aString timeout: mSec
	|res p |
	p := [ res := [self parse: aString] on: Error do: [  ] ] fork.
	(Delay forMilliseconds: mSec) wait.
	p terminate.
	^ res
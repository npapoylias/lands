*Lands-MOGs-Gray
withoutQuotes

	|init ret| init := ReadStream on: (self copyFrom: 2 to: self size -1).

	ret := WriteStream on: String new.

	[init atEnd] whileFalse: [ 
		|c| c := init next. 
		(c = $' and: [ init peek = $' ]) ifTrue: [ init next].
		ret nextPut: c
	].

	^ ret contents
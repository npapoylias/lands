*Lands-MOGs-Gray
asItemsDictionary
	|keys d|
	d := Dictionary new.
	keys := (self collect: [ :i | i key ]) asSet.
	keys do: [ :k |  |v|
		v :=  self select: [ :i | i key = k ] thenCollect: [:i | i value].
		d at: k put:	(v size = 1 ifTrue: [ v first ] ifFalse: [v])
	].
	^ d
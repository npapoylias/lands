accessing
successfullRoots

	|roots|
	roots := GrayCollection new.
	(self size - 2 max: 1) to: self size do: [ :i | roots addAll: ((self at: i) select: [ :state | state isFinal ]) ].
	roots isEmpty ifTrue: [ GrayError new signal: 'No matching parsing tree for this input !' ].
	
	^ self merge: roots 
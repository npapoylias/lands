accessing
successfullRoots

	|roots|
	roots := OrderedCollection new.
	self do: [ :chart | roots addAll: (chart select: [ :state | state isFinal ]) ].
	roots isEmpty ifTrue: [ self error: 'No matching parsing tree for this input !' ].
	
	^ self merge: roots 
as yet unclassified
recursiveAlternativesFor: aState
	|alternatives index from recursiveAddedIndex|

	alternatives := self alternativesFor: aState.
	alternatives ifEmpty: [ ^ alternatives ].
	(lastSeenIndex at: aState rule parent ifAbsentPut: [ Stack new ])
		push: (aState rule parent indexOf: aState rule). 
	index := lastSeenIndex at: aState ruleAtDot ifAbsentPut: [Stack new]. 
	index isEmpty ifTrue: [ index := 1 ] ifFalse: [ index := index top ].
	^ (recursiveAddedIndex := (aState rule recursiveIndex)) = -1
		ifTrue: [ alternatives ] "vanilla ordered choice"
		ifFalse: [ "recursive ordered choices"
				from := index + recursiveAddedIndex.
				(alternatives 
					copyFrom: from to: alternatives size)
					addAll: (alternatives copyFrom: 1 to: from -1); 
					yourself
		]
	
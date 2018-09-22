as yet unclassified
recursiveAlternativesFor: aState
	|alternatives index from recursiveAddedIndex|
	"aState dotPosition = 0 ifTrue: ["
		aState rule name = #expression ifTrue: [ self halt ].
		(lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ])
			push: aState rightHandIndex
	"]". 
	alternatives := self alternativesFor: aState.
	alternatives ifEmpty: [ ^ alternatives ].
	index := lastSeenIndex at: aState ruleAtDot name ifAbsentPut: [Stack new]. 
	index isEmpty 
		ifTrue: [ index := 1. recursiveAddedIndex := 0 ] 
		ifFalse: [ index := index top. recursiveAddedIndex := (aState ruleAtDot directRefsAt: index) first recursiveIndex ].
	^ recursiveAddedIndex = -1
		ifTrue: [ alternatives ] "vanilla ordered choice"
		ifFalse: [ "recursive ordered choices"
				from := index + recursiveAddedIndex.
				(alternatives 
					copyFrom: from to: alternatives size)
					addAll: (alternatives copyFrom: 1 to: from -1); 
					yourself
		]
	
as yet unclassified
computeAlternativesFor: aState
	|alternatives from|

	alternatives := self alternativesFor: aState.
	alternatives ifEmpty: [ ^ alternatives ].
	from := charts recursiveOrderIndexFor: aState.
	^ from = -1
		ifTrue: [ alternatives ] "vanilla ordered choice"
		ifFalse: [ "recursive ordered choices"
				(alternatives 
					copyFrom: from to: alternatives size)
					"addAll: (alternatives copyFrom: 1 to: from -1);"
					yourself
		]
	
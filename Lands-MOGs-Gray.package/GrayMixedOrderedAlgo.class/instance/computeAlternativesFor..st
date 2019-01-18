as yet unclassified
computeAlternativesFor: aState
	|alternatives from|

	alternatives := self alternativesFor: aState.
	alternatives ifEmpty: [ ^ alternatives ].
	from := charts recursiveOrderIndexFor: aState.
	alternatives size > from ifTrue: [ charts memoizeLastSeenIndex ].
	^ (alternatives copyFrom: from to: alternatives size)
					"addAll: (alternatives copyFrom: 1 to: from -1);"
					"yourself"
		
	
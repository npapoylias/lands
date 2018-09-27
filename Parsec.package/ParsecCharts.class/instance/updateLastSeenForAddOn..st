recursive-ordering
updateLastSeenForAddOn: aState
	"aState rule name = #message ifTrue: [ self halt ]."
	aState isComplete ifTrue: [ ^ self updateLastSeenOnCompleteFor: aState].

	aState rule isOrdered 
		ifTrue: [  
			(lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ]) push: aState index.
			logging ifTrue: [ 
				Transcript cr; cr; show: aState rule name; show: ' has now RI: '; show: (lastSeenIndex at: aState rule name); cr.
			].
		]
recursive-ordering
updateLastSeenForAddOn: aState

	aState rule parent isOrdered
		ifTrue: [  
			(lastSeenIndex at: aState rule parent name ifAbsentPut: [ Stack new ]) push: (aState rule parent indexOf: aState rule).
			logging ifTrue: [ 
				Transcript cr; cr; show: aState rule parent name; show: ' has now RI: '; show: (lastSeenIndex at: aState rule parent name); cr.
			].
		]
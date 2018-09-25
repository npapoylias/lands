recursive-ordering
updateLastSeenForAddOn: aState

	aState indexedParent isOrdered 
		ifTrue: [  
			(lastSeenIndex at: aState indexedParent name ifAbsentPut: [ Stack new ]) push: aState index.
			logging ifTrue: [ 
				Transcript cr; cr; show: aState indexedParent name; show: ' has now RI: '; show: (lastSeenIndex at: aState indexedParent name); cr.
			].
		]
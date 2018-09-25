recursive-ordering
updateLastSeenForAddOn: aState

	aState rule parent isOrdered
		ifTrue: [  (lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ]) push: aState rightHandIndex ]
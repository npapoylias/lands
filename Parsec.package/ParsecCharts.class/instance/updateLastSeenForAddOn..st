recursive-ordering
updateLastSeenForAddOn: aState

	(lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ])
			push: aState rightHandIndex
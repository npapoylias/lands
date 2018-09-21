changing suspended state
backTrack
	|aState|
	aState := super backTrack.
	(lastSeenIndex at: aState rule parent ifAbsentPut: [ Stack new ])
		push: (aState rule parent indexOf: aState rule). 
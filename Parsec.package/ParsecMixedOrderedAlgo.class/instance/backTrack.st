changing suspended state
backTrack
	|aState|
	aState := super backTrack.
	lastSeenIndex 
		at: aState rule parent 
		put: (aState rule parent indexOf: aState rule). 
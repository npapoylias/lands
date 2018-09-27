changing suspended state
backTrack
	|state|
	
	state := super backTrack.
	state ifNotNil: [lastSeenIndex := state lastSeenIndex].
	 
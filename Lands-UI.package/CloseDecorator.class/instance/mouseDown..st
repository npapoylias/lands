instance creation
mouseDown: anEvent

	owner owner removeMorph: owner.
	self changed.
	container ifNotNil: [container remove: item]
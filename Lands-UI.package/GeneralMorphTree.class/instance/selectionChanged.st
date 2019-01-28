accessing
selectionChanged
	self changed.
	self selectedNode ifNotNil: [:n | n click]
	
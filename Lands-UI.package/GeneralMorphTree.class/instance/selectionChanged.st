accessing
selectionChanged
	self selectedNode ifNotNil: [:n |
		self expandAllFromNode: n.
		announcer announce: (TOCSelect on: n).
		self changed.
	].
	
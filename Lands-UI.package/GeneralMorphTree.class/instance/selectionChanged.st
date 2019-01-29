accessing
selectionChanged
	self selectedNode ifNotNil: [:n |
		self expandAllFromNode: n.
		announcer announce: (TOCClick on: n).
		self changed.
	].
	
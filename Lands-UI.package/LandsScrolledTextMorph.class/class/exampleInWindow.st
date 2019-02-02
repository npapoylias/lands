example
exampleInWindow

	| dialog |
	dialog := StandardWindow new extent: 200@200.
	dialog addMorph:	(dialog newColumn: {
					self new
				}) fullFrame: LayoutFrame identity.
	dialog openInWorld
*Lands-UI
adoptPaneColor: paneColor
	"Change our color too."
	oldColor ifNotNil: [self color: oldColor]
	"super adoptPaneColor: paneColor.
	self fillStyle: self normalFillStyle"
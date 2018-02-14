accessing
cleanView: v
	v removeElements: (v elements select: [ :e | e model ~= nil ]).	"control elements such as slider. cleanAll."
	v canvas
		removeShapes: (v canvas shapes select: [ :s | s class = TRLabelShape ])
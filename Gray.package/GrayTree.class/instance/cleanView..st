accessing
cleanView: view
	elements := Dictionary new.
	"view clean."
	view elements do: [ :e | e safeRemoveForDuplicates ].	"control elements such as slider. cleanAll."
	view canvas removeShapes: view canvas shapes.
	"view canvas
		removeShapes: (view canvas shapes select: [ :s | s class = TRLabelShape ])"
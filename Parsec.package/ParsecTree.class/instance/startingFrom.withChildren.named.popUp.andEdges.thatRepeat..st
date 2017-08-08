accessing
startingFrom: root withChildren: cSelector named: nSelector popUp: aPopUpSelector andEdges: eSelector thatRepeat: aBoolean

	"use both selectors and blocks here ??"

	modelRoot := root.
	childrenSelector := cSelector.
	nameSelector := nSelector.
	edgesSelector := eSelector.
	shouldRepeat := aBoolean.
	forestIndexPerNode := Dictionary new. "lazily from node to tree, starting from 1"
	popUpBlock := aPopUpSelector
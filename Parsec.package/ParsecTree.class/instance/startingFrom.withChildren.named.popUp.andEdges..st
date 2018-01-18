accessing
startingFrom: root withChildren: cSelector named: nSelector popUp: aPopUpSelector andEdges: eSelector 
	"use both selectors and blocks here ??"

	modelRoot := root.
	childrenSelector := cSelector.
	nameSelector := nSelector.
	edgesSelector := eSelector.
	forestIndexPerNode := Dictionary new. "lazily from node to tree, starting from 1"
	popUpBlock := aPopUpSelector
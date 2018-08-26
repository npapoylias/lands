accessing
startingFrom: root withChildren: cSelector named: nSelector forest: sSelector size: szSelector popUp: aPopUpSelector andEdges: eSelector

	"use both selectors and blocks here ??"

	modelRoot := root. 
	childrenSelector := cSelector.
	nameSelector := nSelector.
	forestSelector := sSelector.
	edgesSelector := eSelector.
	sizeSelector := szSelector.
	forestIndexPerNode := Dictionary new. "lazily from node to tree, starting from 1"
	popUpBlock := aPopUpSelector
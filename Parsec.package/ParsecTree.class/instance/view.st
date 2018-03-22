accessing
view
	"see RTRoassalExample>>exampleArrow"

	| v |
	v := RTView new.
	self redrawElementsFor: v.
	self addSliderOn: v.
	"you can extend to do this per node"
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 10).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
	^ v
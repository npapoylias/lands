accessing
view
	"see RTRoassalExample>>exampleArrow"

	v := RTView new.
	v canvas theme: TRParsecDarkTheme new.
	self redrawElementsFor: v.
	"self addSliderOn: v."
	"you can extend to do this per node"
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 50; color: (Color white copy alpha:0.1)).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
	^ v
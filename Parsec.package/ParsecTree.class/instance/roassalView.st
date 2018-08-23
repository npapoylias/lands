visual-nodes
roassalView
	
	| v |
	v := RTView new.
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 10).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
	^ v
accessing
redrawElementsFor: view
	| arrow velements nodes eb edges |
	self cleanView: view.
	nodes := self allNodes.
	velements := RTGroup new
		addAll: (nodes collect: [ :n | self visualElementFor: n ]);
		yourself.
	velements @ RTDraggable.
	self installPopupOn: velements. "@ self defaultPopUp."
	view addAll: (velements collect: [ :ve | ve allElements ]) deepFlatten.
	"velements @ self elementLabel."
	arrow := RTArrowedLine new
		color: Color black;
		attachPoint: RTVerticalAttachPoint instance.
	eb := RTEdgeBuilder new
		view: view;
		highlightable;
		objects: nodes;
		shape: arrow;
		"label: [ :from :to | (to perform: edgesSelector) asString ] fontSize: 10 color: Color white;"
			connectFrom: #yourself toAll: [ :n | self childrenAtForestIndexFor: n ] .
	RTTreeLayout new on: velements.
	v @ (RTGridView new gridSize: 50; color: (Color white copy alpha:0.1)).
	view signalUpdate
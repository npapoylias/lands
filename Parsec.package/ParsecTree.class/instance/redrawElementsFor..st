accessing
redrawElementsFor: view
	| arrow velements nodes eb edges|
	self cleanView: view.
	nodes := self allNodes.
	velements := RTGroup new 
		addAll: (nodes collect: [:n | 
						|labelText shape node label|
						shape := RTCompositeShape new.
						labelText := self labelForElement: n.
						node := RTEllipse new
							size: (self sizeForElement: n);
							color: (self colorFor: labelText).
						label := RTLabel new text: labelText; color: Color black; height: 28.
						shape add: node; add: label; elementOn: n.
					]);
		yourself.
	velements @ RTDraggable.
	velements @ (RTPopup text: [ :e | popUpBlock value: e ]).
	view addAll: velements.
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
		connectFrom: #yourself
		toAll: [ :n | self childrenOf: n ].
	RTTreeLayout new on: velements.
	view signalUpdate.
	
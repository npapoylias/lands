accessing
updateElementsFor: view
	| arrow elements |
	
	self cleanView: view.
	elements := RTEllipse new "distinguish between ellipses and squares when you have nodes with forests ?"
		size: [ :e | (e perform: sizeSelector) * 50]; "should normalize here depending on the root"
		"was 75: Should both control navigating with clicks and forest size (also focus on mouse over etc...)"
		color: [ :e | self colorFor: (e perform: nameSelector) ];
		elementsOn: self allNodes.
	elements @ RTDraggable.
	elements @ (RTPopup text: [ :e | popUpBlock value: e ]).
	view addAll: elements.
	elements @ self elementLabel.
	arrow := RTArrowedLine new
		color: Color black;
		attachPoint: RTVerticalAttachPoint instance.
	RTEdgeBuilder new
		view: view;
		highlightable;
		objects: self allNodes;
		shape: arrow;
		label: [ :from :to | (to perform: edgesSelector) asString ]
			fontSize: 10
			color: Color white;
		connectFrom: #yourself
			toAll: [ :n | self childrenAtForestIndexFor: n ].
	RTTreeLayout new on: elements.
	view signalUpdate
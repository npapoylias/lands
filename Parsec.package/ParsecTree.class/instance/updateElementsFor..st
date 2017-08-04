accessing
updateElementsFor: v
	| arrow es|
	
	v cleanAll.
	
	es := (RTEllipse new size: 50)
		color: Color black;
		elementsOn: self allNodes.
	es @ RTDraggable.
	v addAll: es.
	es
		@
			(RTLabeled new
				color: Color white;
				center;
				setAsShouldBeInTheFront;
				text: [ :n | n perform: nameSelector ]).
	arrow := RTArrowedLine new
		color: Color white;
		attachPoint: RTVerticalAttachPoint instance.
	RTEdgeBuilder new
		view: v;
		objects: self allNodes;
		shape: arrow;
		label: [ :from :to | (to perform: edgesSelector) asString ]
			fontSize: 8;
		connectFrom: #yourself
			toAll: [ :n | self childrenAtForestIndexFor: n ].
	RTTreeLayout new on: es.
	v signalUpdate. "signal update"
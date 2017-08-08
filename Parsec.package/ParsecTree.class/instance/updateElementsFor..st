accessing
updateElementsFor: v
	| arrow es|
	
	v removeElements: 
		(v elements select: [:e | e model ~= nil]). "control elements such as slider. cleanAll."
	
	"label clean-up"
	v canvas removeShapes: (v canvas shapes select: [:s | s class = TRLabelShape]).
	
	es := (RTEllipse new size: 75)
		color: [:e | self colorFor: (e perform: nameSelector) ] "Color black";
		elementsOn: self allNodes.
	es @ RTDraggable.
	es @ (RTPopup text: [ :e | popUpBlock value: e ]).
	v addAll: es.
	es
		@
			(RTLabeled new
				color: Color black;
				fontSize: 18;
				center;
				setAsShouldBeInTheFront;
				text: [ :n | n = modelRoot 
										ifTrue: ['#' , (self forestIndexFor: modelRoot) asString , ' of ' , (modelRoot perform: childrenSelector) size asString] 
										ifFalse: [n perform: nameSelector] 
					 	]).
	arrow := RTArrowedLine new
		color: Color black;
		attachPoint: RTVerticalAttachPoint instance.
	RTEdgeBuilder new
		view: v;
		highlightable;
		objects: self allNodes;
		shape: arrow;
		label: [ :from :to | (to perform: edgesSelector) asString ]fontSize: 10 color: Color white;
		connectFrom: #yourself
			toAll: [ :n | self childrenAtForestIndexFor: n ].
	RTTreeLayout new on: es.
	v signalUpdate. "signal update"
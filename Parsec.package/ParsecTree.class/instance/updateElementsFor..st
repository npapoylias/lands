accessing
updateElementsFor: v
	| arrow es|
	
	v removeElements: 
		(v elements select: [:e | e model ~= nil]). "control elements such as slider. cleanAll."
	
	"label clean-up"
	v canvas removeShapes: (v canvas shapes select: [:s | s class = TRLabelShape]).
	
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
				text: [ :n | n = modelRoot 
										ifTrue: ['#' , (self forestIndexFor: modelRoot) asString , ' of ' , (modelRoot perform: childrenSelector) size asString] 
										ifFalse: [n perform: nameSelector] 
					 	]).
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
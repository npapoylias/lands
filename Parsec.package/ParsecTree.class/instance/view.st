accessing
view

	"see RTRoassalExample>>exampleArrow"

	| v es c arrow |

	v := RTView new.
	c := RTMultiLinearColor new.
	es := (RTEllipse new size: 30) elementsOn: self allNodes.
	v addAll: es.
	es @ RTDraggable.
	arrow := RTArrowedLine new
		color: Color red;
		attachPoint: RTVerticalAttachPoint instance.

	RTEdgeBuilder new
		view: v;
		objects: self allNodes;
		shape: arrow;
		connectFrom: #yourself to: [ :n | n perform: childrenSelector ].
	
	RTTreeLayout new on: es.
	
	^ v
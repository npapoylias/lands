accessing
view
	"see RTRoassalExample>>exampleArrow"

	| v es c arrow |
	v := RTView new.
	c := RTMultiLinearColor new.
	es := (RTEllipse new size: 50) color: Color black; elementsOn: self allNodes.
	v addAll: es.
	es @ RTDraggable.
	es @ (RTLabeled new color: Color white; center; setAsShouldBeInTheFront; text: [:n | n perform: nameSelector]).
	arrow := RTArrowedLine new
		color: Color white;
		attachPoint: RTVerticalAttachPoint instance.
	RTEdgeBuilder new
		view: v;
		objects: self allNodes;
		shape: arrow;
		label: [:from :to | (to perform: edgesSelector) asString  ] fontSize: 10;
		connectFrom: #yourself
			toAll: [ :n | self childrenAtForestIndexFor: n].
	RTTreeLayout new on: es.
	^ v
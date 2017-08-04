accessing
view
	"see RTRoassalExample>>exampleArrow"

	| v |
	v := RTView new.
	self updateElementsFor: v.
	RTSlider new
		labeled;
		useIntegerLabel;
		min: 1 max: (modelRoot perform: childrenSelector) size;
		view: v;
		size: 100;
		"you can extend to do this per node"
		callback: [ :value | forestIndexPerNode at: modelRoot put: value. self updateElementsFor: v ];
		move: #below;
		value: 1;
		build.
	^ v
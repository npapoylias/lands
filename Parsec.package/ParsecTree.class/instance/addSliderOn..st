accessing
addSliderOn: v
	| max |
	max := (modelRoot perform: childrenSelector) size.
	RTSlider new
		min: 1 max: max;
		view: v;
		size: 100;
		"you can extend to do this per node"
			callback: [ :value | 
				"Transcript show: value;cr."
				forestIndexPerNode at: modelRoot put: value rounded.
				self updateElementsFor: v.
				"no need to rebuild: self addSliderOn: v"];
		move: #above;
		value: 1;
		build
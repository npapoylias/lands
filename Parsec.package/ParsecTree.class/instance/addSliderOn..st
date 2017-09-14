accessing
addSliderOn: v
	| max |
	max := (modelRoot perform: childrenSelector) size.
	max = 1 ifTrue: [ ^ self ].
	RTSlider new
		min: 1 max: max;
		"vertical;"
		view: v;
		size: 5*max;
		"you can extend to do this per node"
			callback: [ :value | 
				"Transcript show: value;cr."
				forestIndexPerNode at: modelRoot put: value rounded.
				self updateElementsFor: v.
				"no need to rebuild: self addSliderOn: v"];
		move: #above;
		value: 1;
		build
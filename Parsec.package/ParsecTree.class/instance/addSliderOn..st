accessing
addSliderOn: v
	RTSlider new
		labeled;
		useIntegerLabel;
		min: 1 max: (modelRoot perform: childrenSelector) size;
		view: v;
		size: 100;
		"you can extend to do this per node"
			callback: [ :value | 
			forestIndexPerNode at: modelRoot put: value.
			self updateElementsFor: v.
			self addSliderOn: v ];
		move: #below;
		value: (self forestIndexFor: modelRoot);
		build
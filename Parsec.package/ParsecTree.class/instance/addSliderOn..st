accessing
addSliderOn: v
	| d max oldValue|
	oldValue := self forestIndexFor: modelRoot.
	max := (modelRoot perform: childrenSelector) size.
	RTSlider new
		labeled;
		useIntegerLabel;
		min: 1 max: max;
		view: v;
		size: 100;
		"you can extend to do this per node"
			callback: [ :value | 
				value> oldValue 
					ifTrue: [ d := 1 ] ifFalse: [ d := -1 ].
				oldValue := value.
				forestIndexPerNode at: modelRoot put: (((self forestIndexFor: modelRoot) + d min: max) max: 1).
				self updateElementsFor: v.
				self addSliderOn: v];
		move: #above;
		value: oldValue;
		build
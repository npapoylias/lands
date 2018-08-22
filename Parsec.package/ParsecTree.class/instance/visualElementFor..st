accessing
visualElementFor: n
	| shape label node labelText |
	shape := RTCompositeShape new.
	labelText := self labelForElement: n.
	node := RTEllipse new
		size: (self sizeForElement: n);
		color: (self colorFor: labelText).
	label := RTLabel new
		text: labelText;
		color: Color black;
		height: 28.
	^ shape
		add: node;
		add: label;
		elementOn: n
visual-nodes
simpleNodeOn: object
	| el |
	el := self defaultNodeShapeWithLabel elementOn: object.
	self installInteractionsOn: el.
	^ el
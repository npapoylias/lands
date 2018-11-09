visual-nodes
simpleNodeOn: object
	| el |
	el := self defaultNodeShapeWithLabel elementOn: object.
	"self installPopupOn: el."
	^ el
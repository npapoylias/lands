visual-nodes
defaultNodeShapeWithLabel

	"update with actual selectors"
	^ defaultNodeShapeWithLabel ifNil: [defaultNodeShapeWithLabel:= self defaultNodeShape ++ self defaultLabel]
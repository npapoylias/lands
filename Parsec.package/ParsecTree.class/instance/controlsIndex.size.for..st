visual-nodes
controlsIndex: atIndex size: forestSize for: node
	| controls label up |
	controls := (RTRoundedBox new
		color: (Color yellow alpha: 0.3);
		borderRadius: 20;
		element)
		eqEmbed:
			{label := (RTLabel new
				text: atIndex asString , ' / ' , forestSize asString;
				color: Color black";
				height: 7") element.
			 up := (RTPolygon triangle
				"size: 21"
				color: Color black;
				elementOn: #up).
			down := ((RTPolygon triangleRotated: Float pi)
				"size: 22"
				color: Color black;
				elementOn: #down)}
		vertically: 2.	"borderRadius: 10;"	"transparent"
	up @ RTHighlightable.
	up when: TRMouseClick do: [ :evt | 
		forestIndexPerNode at: node put: (self forestIndexFor: node) + 1. 
		self redrawElementsFor: v.  ].
	down @ RTHighlightable.
	down when: TRMouseClick do: [ :evt | 
		forestIndexPerNode at: node put: (self forestIndexFor: node) - 1.
		self redrawElementsFor: v  ].
	^ controls	
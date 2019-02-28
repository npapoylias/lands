visual-nodes
controlsIndex: atIndex size: forestSize totalSize: totalSize for: node
	| controls label totalLabel up |
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
				color: Color black";
				elementOn: #up") element.
			down := ((RTPolygon triangleRotated: Float pi)
				"size: 22"
				color: Color black";
				elementOn: #down") element.
			totalLabel := (RTLabel new
				text: 'Σ=' , totalSize asString;
				color: Color black";
				height: 7") element.	
			}
		vertically: 2.	"borderRadius: 10;"	"transparent"
	up @ RTHighlightable.
	up when: TRMouseClick do: [ :evt | |currentValue|
		currentValue := self forestIndexFor: node.
		currentValue < forestSize
			ifTrue: [ 
				forestIndexPerNode at: node put: currentValue + 1.
				self redrawElementsFor: v 
			]
		].
	down @ RTHighlightable.
	down when: TRMouseClick do: [ :evt | |currentValue|
		currentValue := self forestIndexFor: node.
		currentValue > 1
			ifTrue: [ 
				forestIndexPerNode at: node put: currentValue - 1.
				self redrawElementsFor: v 
			]
		].
	^ controls	
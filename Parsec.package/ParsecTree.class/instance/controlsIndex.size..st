visual-nodes
controlsIndex: atIndex size: forestSize
	| controls label up |
	controls := (RTRoundedBox new
		color: (Color yellow alpha: 0.3);
		element)
		eqEmbed:
			{label := (RTLabel new
				text: atIndex asString , ' / ' , forestSize asString;
				color: Color black";
				height: 7") element.
			 up := (RTPolygon triangle
				"size: 21;"
				color: Color black;
				elementOn: #up).
			down := ((RTPolygon triangleRotated: Float pi)
				"size: 22;"
				color: Color black;
				elementOn: #down)}
		vertically: 2.	"borderRadius: 10;"	"transparent"
	self installInteractionsOn: up.
	self installInteractionsOn: down.
	^ controls	
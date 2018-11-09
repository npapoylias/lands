as yet unclassified
playground2

	|e text v|

	text := 'hallo world' , Character cr asString , 'sencond line'.
	v := RTView new.

	"USE SVG WITH EVENTS AND CONTRAINTS TO DO SINGLE CHILDREN EMBEDDING + NAVIGATION
	WITH < > AND SLIDER -- USE DIMENSION TO CONVEY INFORMATION -- EMBED MORE THAN ONE
	CHILDREN WHEN IT IS STATIC -- MIXED BETWEEN TREE AND TREE-MAP"

	e := (RTEllipse new color: Color green; borderColor: Color white; borderWidth: 5; elementOn: #boxModel) embed: {
			(RTLabel new text: 'expression'; color: Color black) element.
			(RTEllipse new color: Color transparent; elementOn: #ellipseModel) embed: {
				(((RTEllipse new size: 60; 
					color: Color brown; borderColor: Color white;
					borderWidth: 5) ++ ((RTLabel text: [:c | 'asfasfasdfasdfasf'])color: Color black;yourself)) 	elementOn: Object).
				"(RTText new text: text; color: Color black; height: 20) element."
				(RTRoundedBox new borderRadius: 10; color: Color "transparent"yellow; element) embed: 				{
					(RTLabel new text: '5/10'; color: Color black; height: 10) element.	  
					RTPolygon triangle size: 20; color: Color black; elementOn: #starModel.
					(RTPolygon triangleRotated: Float pi) size: 20; color: Color black; elementOn: #starModel.
					"RTBox new size: 20; color: Color white;  element."
				} vertically: 1.
			} horizontally: 2.
		} vertically:0.

	v addAll: e allElements.
	v @ RTDraggableView.
	v @ (RTGridView new gridSize: 10).
	v @ RTZoomableView.
	v @ RTDoubleScrollBar.
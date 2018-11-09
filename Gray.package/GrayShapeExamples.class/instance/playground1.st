as yet unclassified
playground1

|e text v|

text := 'hallo world' , Character cr asString , 'sencond line'.

"USE SVG WITH EVENTS AND CONTRAINTS TO DO SINGLE CHILDREN EMBEDDING + NAVIGATION
WITH < > AND SLIDER -- USE DIMENSION TO CONVEY INFORMATION -- EMBED MORE THAN ONE
CHILDREN WHEN IT IS STATIC -- MIXED BETWEEN TREE AND TREE-MAP"

e := (RTBox new color: Color green; elementOn: #boxModel) embed: {
			(RTEllipse new color: Color red; elementOn: #ellipseModel) embed: {
				RTBox new size: 40; 
					color: Color brown; borderColor: Color black;
					borderWidth: 5; element.
				(RTText"RTLabel" new text: text; color: Color black; height: 20) element.
				(RTRoundedBox new borderRadius: 10; color: Color "transparent"yellow; element) embed: 				{	  
					RTPolygon star size: 20; color: Color black; elementOn: #starModel.
					RTBox new size: 20; color: Color white; element.
				} vertically: 0.
				RTPolygon diamond size: 40; color: Color orange; element.
			} horizontally: 2.
		} horizontally:0.

v := RTView new.
v addAll: e allElements.
v @ RTDraggableView.
v @ (RTGridView new gridSize: 10).
v @ RTZoomableView.
v @ RTDoubleScrollBar.
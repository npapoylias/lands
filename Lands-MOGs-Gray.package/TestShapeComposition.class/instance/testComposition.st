tests
testComposition

|e text v|

text := 'hallo world' , Character cr asString , 'sencond line'.

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
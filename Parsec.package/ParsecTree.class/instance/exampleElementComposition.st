accessing
exampleElementComposition

|e text|

text := 'hallo world' , Character cr asString , 'sencond line'.

e := (RTEllipse new color: Color green; elementOn: #ellipseModel) embed: {
			(RTBox new color: Color red; elementOn: #boxModel) embed: {
				RTBox new size: 40; color: Color brown; element.
				(RTText"RTLabel" new text: text; color: Color black; height: 20) element.
				(RTRoundedBox new borderRadius: 10; color: Color "transparent"yellow; element) embed: 				{	  
					RTPolygon star size: 20; color: Color black; elementOn: #starModel.
					RTBox new size: 20; color: Color white; element.
				} vertically: 0.
				RTPolygon diamond size: 40; color: Color orange; element.
		} horizontally: 0.
	} horizontally:0.

RTView new addAll: e allElements.
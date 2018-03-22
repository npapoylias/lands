accessing
exampleElementComposition

|e text|

text := 'hallo world' , Character cr asString , 'sencond line'.

e := (RTEllipse new color: Color green; element) embed: {
			(RTBox new color: Color red; element) embed: {
				RTBox new size: 40; color: Color brown; element.
				(RTText new text: text; color: Color black; height: 20) element.
				(RTBox new color: Color "transparent"yellow; element) embed: {  
					RTBox new size: 20; color: Color black; element.
					RTBox new size: 20; color: Color white; element 
				} vertically: 0.
			RTBox new size: 40; color: Color orange; element.
		} horizontally: 0.
	} horizontally:0.

RTView new addAll: e allElements.
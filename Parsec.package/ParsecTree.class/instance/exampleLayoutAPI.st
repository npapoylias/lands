accessing
exampleLayoutAPI

|e |


e := {
	{
		RTBox new size: 40; color: Color brown; element.
		
		(RTText new text: 'hallo world'; color: Color black; height: 20) element.
		
		{  
			RTBox new size: 20; color: Color black; element.
			RTBox new size: 20; color: Color white; element 
		} asVerticalLayoutEmbeddedIn: (RTBox new color: Color yellow; element).
		
		RTBox new size: 40; color: Color orange; element.
	
	} asHorizontalLayoutEmbeddedIn:(RTBox new color: Color red; element)

} asHorizontalLayoutEmbeddedIn: (RTEllipse new color: Color green; element).

RTView new addAll: e allElements.
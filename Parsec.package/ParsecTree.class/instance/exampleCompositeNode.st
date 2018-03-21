accessing
exampleCompositeNode

	|labelText shape1 shape2 node label el innerNode|

RTNest new.
labelText := 'hello world' , Character cr asString , 'second line'.
node := RTEllipse new
	color: Color green;
	element.
innerNode := RTEllipse new
	color: Color red;
	element.
label := (RTText new text: labelText; color: Color black; height: 20) element.
shape1 := RTBox new size: 40; color: Color brown; element.
shape2 := RTBox new size: 40; color: Color brown; element.
"RTHorizontalFlowLayout new alignCenter; on: { label . shape }. "
RTGridLayout new lineItemsCount: 3; gapSize: -1;on: { shape1 . label . shape2 }. 
RTNest new on: innerNode nest: { shape1. label . shape2 }.
RTNest new on: node nest: { innerNode}.
RTView new add: node; add: innerNode; add: shape1; add: shape2; add: label.
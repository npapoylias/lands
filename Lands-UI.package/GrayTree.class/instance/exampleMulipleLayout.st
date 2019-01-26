accessing
exampleMulipleLayout

	|labelText shape1 shape2 node label el innerNode vN v1 v2|


	vN := RTBox new color: Color yellow; element.
	v1 := RTBox new size: 20; color: Color black; element.
	v2 := RTBox new size: 20; color: Color white; element.
	RTVerticalLineLayout new "lineItemsCount: 3;" gapSize: 0;on: { v1 . v2 }.
	RTNest new padding:-10; on: vN nest: { v1 . v2 }.
	labelText := 'hello world' , Character cr asString , 'second line'.
	node := RTEllipse new
	color: Color green;
	element.
	innerNode := RTBox new
	color: Color red;
	element.
	label := (RTText new text: labelText; color: Color black; height: 20) element.
	shape1 := RTBox new size: 40; color: Color brown; element.
	shape2 := RTBox new size: 40; color: Color brown; element.
	"RTHorizontalFlowLayout new alignCenter; on: { label . shape }. "
	"RTGridLayout"RTHorizontalLineLayout new "lineItemsCount: 3;" gapSize: 0;on: { shape1 . label . vN 	. shape2 }. 
	RTNest new on: innerNode nest: { shape1. label . vN . shape2 }.
	RTNest new on: node nest: { innerNode}.
	RTView new add: node; add: innerNode; add: shape1; add: shape2; add: vN; add: v1; add: v2; add: 	label.
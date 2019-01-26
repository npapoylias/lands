as yet unclassified
forestEmbeddedNode2

|e text v e1 e2 |

v := RTView new.

"USE SVG WITH EVENTS AND CONTRAINTS TO DO SINGLE CHILDREN EMBEDDING + NAVIGATION
WITH < > AND SLIDER -- USE DIMENSION TO CONVEY INFORMATION -- EMBED MORE THAN ONE
CHILDREN WHEN IT IS STATIC -- MIXED BETWEEN TREE AND TREE-MAP"

e1 := ((RTBox new 
		size: 60; 
		color: Color brown; 
		borderColor: Color white;
		borderWidth: 5)) elementOn: 'expression'.

e2 := ((RTEllipse new 
		size: 40; 
		color: Color brown; 
		borderColor: Color white;
		borderWidth: 5) ++ ((RTLabel text: [:c | c]) color: Color black;yourself)) elementOn: 'expression'.

e1 embed: { 
	((RTLabel new text: 'expression  (5/10)'; height: 13;color: Color black)) element. 
	(RTBox new color: Color transparent; element) embed: {
		((RTLabel text: '<') color: Color black; height: 25;yourself) element.
		e2. 
		((RTLabel text: '>') color: Color black; height: 25;yourself) element.
	} horizontally: 3. 
} vertically: 0.

e2  when: TRMouseClick do: [:evt| e2 color: e2 color negated].
e2 @ RTPopup.
e2  when: TRMouseEnter do: [:evt| e2 color: e2 color negated. ].
e2  when: TRMouseLeave do: [:evt| e2 color: e2 color negated. ].
v addAll: e1 allElements.
v addAll: e2.
v @ RTDraggableView.
v @ (RTGridView new gridSize: 10).
v @ RTZoomableView.
v @ RTDoubleScrollBar.
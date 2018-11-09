as yet unclassified
simpleNode

|e text v|

v := RTView new.

"USE SVG WITH EVENTS AND CONTRAINTS TO DO SINGLE CHILDREN EMBEDDING + NAVIGATION
WITH < > AND SLIDER -- USE DIMENSION TO CONVEY INFORMATION -- EMBED MORE THAN ONE
CHILDREN WHEN IT IS STATIC -- MIXED BETWEEN TREE AND TREE-MAP"

e := ((RTEllipse new 
		size: 60; 
		color: Color brown; 
		borderColor: Color white;
		borderWidth: 5) ++ ((RTLabel text: [:c | c]) color: Color black;yourself)) elementOn: 'expression'.

e  when: TRMouseClick do: [:evt| e color: e color negated].
e @ RTPopup.
e  when: TRMouseEnter do: [:evt| e color: e color negated. ].
e  when: TRMouseLeave do: [:evt| e color: e color negated. ].
v addAll: e.
v @ RTDraggableView.
v @ (RTGridView new gridSize: 10).
v @ RTZoomableView.
v @ RTDoubleScrollBar.
*Gray
label: twoArgBlock fontSize: fontSizeAsBlockOrValue color: aLabelColor
	"Method useful to label edges. The argument is a two arg block that accept the starting object model and the ending object model. The block has to return a String that will be used to label the edge.
	
	Here is an example:
	| b edges |
	b := RTMondrian new.
	b shape circle size: 10; color: Color red.
	b nodes: (1 to: 20).

	b edges 
		moveBehind; 
		highlightable;
		label: [ :from :to | from asString, '>', to asString ] fontSize: 5;
		connectFrom: [ :v | v // 2 ].

	b layout cluster.
	b
	"
	actions add: [ :edge | 
		| lbl lblEl |
		lbl := twoArgBlock value: edge from model value: edge to model.
		lblEl := RTLabel new height: fontSizeAsBlockOrValue; color: aLabelColor; elementOn: lbl.
		view add: lblEl.
		TRConstraint stick: lblEl between: edge from and: edge to ] 
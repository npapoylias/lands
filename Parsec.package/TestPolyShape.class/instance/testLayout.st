tests
testLayout

	|p1 p2 p3 p4|

	p1 := PolyShape new ellipse; size: 30.
	p2 := PolyShape new ellipse; size: 30;"text: 'hallo';" color: #red.
	p3 := PolyShape new box; size: 80; color: #yellow.
	p4 := PolyShape new box; size: 80; color: #brown.
	(((p1/(p2*p3)))>p4) render.
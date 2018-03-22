tests
testLayout

	|p1 p2|
	
	"check RTView as element as well"

	p1 := PolyShape new ellipse.
	p2 := PolyShape new box; color: #red.
	p1 render.
	p2 render.
	(p1>p2) render.
	(p1<p2) render.
	(p1+p2) render.
	(p1-p2) render.
	(p1*p2) render.
	(p1/p2) render.
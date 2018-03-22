accessing
svg: fileName

	"example"

	shapeElement := (RTSVGPath new path: (RTSVGPath perform: RTSVGPath icons first)) element.
	group add: shapeElement.
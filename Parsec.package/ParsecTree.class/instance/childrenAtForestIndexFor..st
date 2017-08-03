accessing
childrenAtForestIndexFor: n
	^ (n perform: childrenSelector) at: (self forestIndexFor: n)
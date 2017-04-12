drawing-should-depricate
childrenWithPositions

	^ childrenStates values deepFlatten collect: [ :child | self -> (child from -> child to) -> child ]
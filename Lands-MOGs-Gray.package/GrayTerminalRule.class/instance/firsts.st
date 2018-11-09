accessing
firsts

	^ firsts ifNil: [self computeFirsts]
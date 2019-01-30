api
browserOnMethod: aMethod

	morph := (Smalltalk tools browser uiOnMethod: aMethod) windowInstance removeBoxes.
	morph hResizing: #spaceFill.
	morph vResizing: #spaceFill.
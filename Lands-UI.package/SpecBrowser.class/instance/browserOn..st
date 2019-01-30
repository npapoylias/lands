api
browserOn: aClass

	morph := (Smalltalk tools browser uiOnClass: aClass) windowInstance removeBoxes.
	morph hResizing: #spaceFill.
	morph vResizing: #spaceFill.
visual-nodes
defaultForestSurroundingShape

	^ defaultForestSurroundingShape 
		ifNil: [ defaultForestSurroundingShape := RTBox new color: Color brown; borderColor: Color white; borderWidth: 3]
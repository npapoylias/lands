visual-nodes
defaultForestSurroundingShape

	^ defaultForestSurroundingShape 
		ifNil: [ defaultForestSurroundingShape := RTBox new color: [:e | (self colorFor: (self labelForElement: e)) negated]  ; borderColor: Color white; borderWidth: 3]
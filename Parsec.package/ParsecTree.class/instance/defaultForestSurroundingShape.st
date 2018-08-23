visual-nodes
defaultForestSurroundingShape

	^ defaultForestSurroundingShape 
		ifNil: [ defaultForestSurroundingShape := RTRoundedBox new borderRadius: 20; color: [:e | (self colorFor: (self labelForElement: e)) negated]  ; borderColor: Color white; borderWidth: 3]
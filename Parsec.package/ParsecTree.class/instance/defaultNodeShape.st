visual-nodes
defaultNodeShape

	"update with actual selectors"
	^ defaultNodeShape ifNil: [
		defaultNodeShape := self 
			shape: RTEllipse 
			size: 50 
			color: [:e | self colorFor: (self labelForElement: e)]  
			borderColor: Color white 
			borderWidth: 3
		]
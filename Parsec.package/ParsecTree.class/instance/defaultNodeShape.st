visual-nodes
defaultNodeShape

	"update with actual selectors"
	^ defaultNodeShape ifNil: [
		defaultNodeShape := self 
			shape: RTEllipse size: nil  
			color: Color brown  
			borderColor: Color white 
			borderWidth: 5
		]
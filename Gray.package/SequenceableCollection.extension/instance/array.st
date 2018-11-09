*Gray
array "Asl method"


	^ RBArrayNode
		statements: (self collect: [ :n | n isNode ifTrue: [ n ] ifFalse: [ n lit ] ])
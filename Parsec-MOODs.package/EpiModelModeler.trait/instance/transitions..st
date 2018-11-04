accessing
transitions: aGraph

	"validate"
	|graphComp|
	graphComp := aGraph keys addAll: (aGraph values collect: #keys).
	graphComp removeAll: {self attributes keys first . #Empty}.
	self assert: graphComp asSet = self attributes values asSet.
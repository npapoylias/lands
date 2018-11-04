accessing
transitions: aGraph

	"validate"
	|graphComp|
	graphComp := aGraph keys asOrderedCollection 
		addAll: (aGraph values collect: #keys) flatten;
		yourself.
	graphComp removeAll: {self attributes keys first . #Empty}.
	self assert: graphComp asSet = self attributes values asSet.
	
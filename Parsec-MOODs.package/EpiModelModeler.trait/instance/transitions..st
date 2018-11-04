accessing
transitions: aGraph

	"validate"
	|graphComp|
	graphComp := aGraph keys asOrderedCollection 
		addAll: (aGraph values collect: #keys) flatten;
		yourself.
	graphComp := graphComp asSet removeAll: {self attributes keys first . #Empty}.
	self assert: graphComp = self attributes values first asSet.
	
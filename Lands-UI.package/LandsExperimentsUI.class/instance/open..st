initialization
open: aNode
	|nodes tManager path| 
	nodes := OrderedCollection new add: aNode; yourself.
	[nodes last parentNode = nil] whileFalse: [nodes add: nodes last parentNode].
	(self updateTabAreaWith: (tManager := (Smalltalk globals at: (self classNameFor: nodes last item) asSymbol) default tab))
		ifFalse: [  
			path := aNode pathIndex.
			path doWithIndex: [:pathIndex :index | 
				tManager widget widget selectTabAt: pathIndex. 
				tManager := (Smalltalk globals at: (self classNameFor: (nodes at: nodes size - index) item) asSymbol) default tabContents
			] 
		] ifTrue: [ (Delay forMilliseconds: 200) wait. self open: aNode ] "self update ignores tab indexing -- wait and repeat"
	
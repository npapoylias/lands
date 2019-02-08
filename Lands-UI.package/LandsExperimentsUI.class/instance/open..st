rendering
open: aNode
	|nodes tManager path| 
	nodes := OrderedCollection new add: aNode; yourself.
	[nodes last parentNode = nil] whileFalse: [nodes add: nodes last parentNode].
	(self updateTabAreaWith: (tManager := (self classFor: nodes last item) default tab))
		ifFalse: [  
			path := aNode pathIndex.
			path doWithIndex: [:pathIndex :index | 
				tManager widget widget selectTabAt: pathIndex. 
				tManager := (self classFor: (nodes at: nodes size - index) item) default tabContents
			] 
		] ifTrue: [ (Delay forMilliseconds: 200) wait. self open: aNode ]. "self update ignores tab
	indexing -- wait and repeat"
		
	
initialization
open: aNode
	|nodes tManager tabs path| 
	nodes := OrderedCollection new add: aNode; yourself.
	[nodes last parentNode = nil] whileFalse: [nodes add: nodes last parentNode].
	self updateTabAreaWith: (tManager := (Smalltalk globals at: (self classNameFor: nodes last item) asSymbol) default tab).
	path := aNode pathIndex.
	path doWithIndex: [:pathIndex :index | 
		tManager widget widget selectTabAt: pathIndex. 
		tManager := (Smalltalk globals at: (self classNameFor: (nodes at: nodes size - index) item) asSymbol) default tabContents
	]. 
	"handle indexing later"

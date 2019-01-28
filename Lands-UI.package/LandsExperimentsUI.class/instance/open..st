initialization
open: aNode
	|node| node := aNode.
	[node parentNode = nil] whileFalse: [node := node parentNode].
	self updateTabAreaWith: (Smalltalk globals at: (self classNameFor: node item) asSymbol) default tab.
	"handle indexing later"

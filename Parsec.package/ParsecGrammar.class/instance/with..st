accessing
with: aRuleCollection

	|size|
	self withRec: aRuleCollection.
	self values do: [ :v | v preComputeDirectRefs ].
	size := 0. "init first and follow as sets"
	[size ~= (size := self values sum: [:rule |
		"self halt."
		rule computeFirsts. 
		rule flattenFirsts size])] whileTrue. 
	"ie run as long as there is nothing to add -- recheck how this works with memoization"
	size := 0.
	(self at: #start) follow add: (self at: #Eof) flattenFirsts.
	[size ~= (size := self values sum: [:rule |
		"self halt."
		rule computeFollow. 
		rule follow size])] whileTrue.
	"lazy compute firsts now
	that all rules are in place and before parsing"
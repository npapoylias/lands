accessing
with: aRuleCollection

	|s|
 
	self withRec: aRuleCollection.
	sanitize ifTrue: [self sanitizeGrammar].
	self values do: [ :v | v preComputeDirectRefs ].
	s := 0. "init first and follow as sets"
	[s ~= (s := self values sum: [:rule |
		"self halt."
		rule computeFirsts. 
		rule flattenFirsts size])] whileTrue. 
	"ie run as long as there is nothing to add -- recheck how this works with memoization"
	s := 0.
	(self at: #start) follow addAll: (self at: #Eof) flattenFirsts.
	[s ~= (s := self values sum: [:rule |
		"self halt."
		rule computeFollow. 
		rule follow size])] whileTrue.
	self values do: [ :v | v computePredict ].
	"lazy compute firsts now
	that all rules are in place and before parsing"
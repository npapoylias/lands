accessing
withRec: aRuleCollection

	aRuleCollection do: [ :rule | |epegRule| 
		epegRule := rule asEpegRule. "poly for string (without actions) and ParsecRule"
		self at: epegRule name put: (epegRule grammar: self).
		self withRec: epegRule tempRules "if any"
	].

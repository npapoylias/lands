accessing
withRec: aRuleCollection

	aRuleCollection do: [ :rule | |epegRule| 
		epegRule := rule asEpegRule value. "poly for string (without actions) and ParsecRule"
		self at: epegRule name put: (epegRule grammar: self).
		self withRec: epegRule tempRules "if any"
	].

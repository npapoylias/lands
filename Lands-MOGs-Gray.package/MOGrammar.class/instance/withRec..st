accessing
withRec: aRuleCollection

	aRuleCollection do: [ :rule | |mogRule| 
		mogRule := rule asMogRule value. "poly for string (without actions) and GrayRule"
		self at: mogRule name put: (mogRule grammar: self).
		self withRec: mogRule tempRules "if any"
	].

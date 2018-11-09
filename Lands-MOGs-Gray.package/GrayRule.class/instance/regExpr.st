accessing
regExpr

	^ childRules first regExpr "if we asked for regExpr from a non-terminal rule
	ask the first child. Used for overwritting ignore for eg" 
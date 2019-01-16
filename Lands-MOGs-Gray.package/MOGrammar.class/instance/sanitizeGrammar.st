accessing
sanitizeGrammar

	self sanitize: #start havingSeen: { } asSet.
	"self gcUnreachableRules"
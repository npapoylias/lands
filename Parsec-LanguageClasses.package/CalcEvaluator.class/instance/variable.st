rules
variable

	^ super variable ==> [ :token | token tokenValue asSymbol ]
	
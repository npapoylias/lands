accessing
id

	^ id --> '<[a-zA-Z0-9_\-]+>' 
		==> [ :token |  (token value atAll: (2 to: token value size - 1)) asSymbol ]
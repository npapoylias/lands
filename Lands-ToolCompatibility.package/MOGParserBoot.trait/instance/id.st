accessing
id

	^ super id ==> [ :token |  (token string atAll: (2 to: token string size - 1)) asSymbol ] 
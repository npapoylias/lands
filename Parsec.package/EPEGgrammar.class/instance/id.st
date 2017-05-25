accessing
"protocol: accessing"
id

	^ super id ==> [ :token |  (token value atAll: (2 to: token value size - 1)) asSymbol ]
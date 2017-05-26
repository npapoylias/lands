accessing
"protocol: accessing"
id

	^ super id ==> [ :token |  (token tokenValue atAll: (2 to: token tokenValue size - 1)) asSymbol ]
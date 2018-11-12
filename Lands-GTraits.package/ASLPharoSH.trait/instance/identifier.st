accessing
identifier

	^ super identifier ==> [ :token | self token: token color: #cyan ]
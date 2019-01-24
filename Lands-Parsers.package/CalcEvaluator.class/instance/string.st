accessing
string

	^ super string ==> [ :token | (token string copyFrom: 2 to: token string size - 1) lit ]
	
as yet unclassified
string

	^ super string ==> [ :token | |str| str := token string. str atAll: (2 to: str size - 1) ]
	
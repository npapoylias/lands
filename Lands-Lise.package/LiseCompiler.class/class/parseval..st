accessing
parseval: aString
	|results|
	results :=  self default parseval: aString.
	self assert: results size = 1.
	^ results first
recursive-ordering-api
popLastSeenAt: aName

	|s|
	s :=(self lastSeenAt: aName).
	s isEmpty ifFalse: [ s pop ]
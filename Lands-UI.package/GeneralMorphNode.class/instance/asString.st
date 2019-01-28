accessing
asString
	
	|s| ^ (s := item x key) first = $* ifTrue: [ '' ] ifFalse: [ s ]

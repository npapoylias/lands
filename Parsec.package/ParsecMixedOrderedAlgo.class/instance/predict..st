as yet unclassified
predict: aState
	"aState ruleAtDot name = #message ifTrue: [ self halt ]."
	aState ruleAtDot isOrdered
		ifTrue: [ charts memoizeLastSeenIndex. super predict: aState ] 
		ifFalse: [super predictUnordered: aState ]
	
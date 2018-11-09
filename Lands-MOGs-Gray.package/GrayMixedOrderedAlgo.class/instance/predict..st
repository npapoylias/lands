as yet unclassified
predict: aState
	"aState ruleAtDot name = #message ifTrue: [ self halt ]."
	aState ruleAtDot isOrdered
		ifTrue: [ charts memoizeLastSeenStack. super predict: aState ] 
		ifFalse: [super predictUnordered: aState ]
	
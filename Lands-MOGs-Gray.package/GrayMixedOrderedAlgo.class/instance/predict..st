as yet unclassified
predict: aState
	"aState ruleAtDot name = #expression ifTrue: [ self halt ]."
	aState ruleAtDot isOrdered
		ifTrue: [ charts memoizeLastSeenStack. super predict: aState ] 
		ifFalse: [super predictUnordered: aState ]
	
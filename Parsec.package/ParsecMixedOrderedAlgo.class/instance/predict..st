changing suspended state
predict: aState
	"aState ruleAtDot name = #expression ifTrue: [ self halt ]."
	
	aState ruleAtDot isOrdered
		ifTrue: [ charts updateLastSeenBackTrackCopy. super predict: aState ] 
		ifFalse: [super predictUnordered: aState ]
	
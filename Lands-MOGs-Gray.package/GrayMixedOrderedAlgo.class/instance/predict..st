as yet unclassified
predict: aState
	"aState ruleAtDot name = #expression ifTrue: [ self halt ]."
	aState ruleAtDot isOrdered
		ifTrue: [ super predict: aState ] 
		ifFalse: [
			aState btIndexOnPredict: backTrackStack size. 
			super predictUnordered: aState ]
	
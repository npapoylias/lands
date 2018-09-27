recursive-ordering
recursiveOrderIndexFor: aState

	| index recursiveAddedIndex |
	index := lastSeenIndex at: aState ruleAtDot name ifAbsent: [nil].
	index 
		ifNil: [ index := 1. recursiveAddedIndex := 0 ] 
		ifNotNil: [ 
			index isEmpty 
				ifTrue: [ index := 1. recursiveAddedIndex := 0 ] 
				ifFalse: [
					index := index top. 
					recursiveAddedIndex := aState ruleAtDot recursiveIndexOf: index ]
				]. 
	^ recursiveAddedIndex = -1 ifTrue: [ -1 ] ifFalse: [ index + recursiveAddedIndex ]
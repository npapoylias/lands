recursive-ordering
recursiveOrderIndexFor: aState

	| index recursiveAddedIndex |
	index := self lastSeenAt: aState ruleAtDot name.
	index ifNil: [ index := 1. recursiveAddedIndex := 0 ] 
		ifNotNil: [
			index ifEmpty: [ index := 1. recursiveAddedIndex := 0 ]
				ifNotEmpty: [   
					index := index top x. 
					recursiveAddedIndex := aState ruleAtDot recursiveIndexOf: index
				] 
		]. 
	^ recursiveAddedIndex = -1 ifTrue: [ -1 ] ifFalse: [ index + recursiveAddedIndex ]
changing suspended state
complete: aState

	"aState is complete delete stack alternatives otherwise this is a full backtrack"
	|prevIndex|
	prevIndex := ruleToAlternativeIndex at: aState rule ifAbsent: [].
	prevIndex ifNotNil: [  
		ruleToAlternativeIndex 
			at: aState rule 
			put: (prevIndex = 1 ifTrue: [1] ifFalse: [prevIndex - 1]). "rewind recursive order selection"
	].
	charts copySingleAlternativesWaitingFor: aState 
			from: aState from "previousReadingPosition"
			to: aState to
			for: self
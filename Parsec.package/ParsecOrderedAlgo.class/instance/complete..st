changing suspended state
complete: aState

	"aState is complete delete stack alternatives otherwise this is a full backtrack"
	self removeStackAlternativesOf: aState rule startingAt: aState from.
	charts copySingleAlternativesWaitingFor: aState 
			from: aState from"previousReadingPosition"
			to: aState to 
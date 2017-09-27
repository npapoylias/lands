changing suspended state
complete: aState

	"aState is complete delete stack alternatives otherwise this is a full backtrack"

	charts copySingleAlternativesWaitingFor: aState 
			from: aState from"previousReadingPosition"
			to: aState to
			for: self
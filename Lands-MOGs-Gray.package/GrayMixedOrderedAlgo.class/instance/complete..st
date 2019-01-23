changing suspended state
complete: aState

	"aState rule name = #expression ifTrue: [ self halt ]."

	aState rule isOrdered
		ifTrue: [ super complete: aState] 
		ifFalse: [
			aState hasAlternatives ifFalse: [ backTrackStack removeAllFromIndex: aState btIndexOnPredict - 1 ]. "keep last"
			super completeUnordered: aState
		].
	
enumerating
currentDo: aBlock

	self printToLog.

	stateIndex := 0. "chart may change while looping so using indexing"
	[ stateIndex < self current size ] whileTrue: [ |state|
			stateIndex := stateIndex + 1. 
			state := self current at: stateIndex.
			logging ifTrue: [ Transcript show: $(; show: stateIndex; show: ') '; show: state;  cr. ].
			aBlock value: state.
	].


accessing
layoutClass

	^ layout = #down ifTrue: [ SpecColumnLayout ] ifFalse: [ SpecRowLayout ]
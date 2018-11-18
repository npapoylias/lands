parsing
algoLoop
	[ charts
		currentDo: [ :state | self algoStepOn: state ];
		proceed ] whileTrue
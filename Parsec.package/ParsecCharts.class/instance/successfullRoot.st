accessing
successfullRoot

	^ self last detect: [ :state | state isFinal ]
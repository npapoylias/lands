as yet unclassified
embeddedArray

	^ super embeddedArray ==> [ :values | values nodes asArray lit <-> values ]

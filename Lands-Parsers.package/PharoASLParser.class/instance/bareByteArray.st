as yet unclassified
bareByteArray

	^ super bareByteArray ==> [ :tokens | tokens second asByteArray lit <-> tokens ] 
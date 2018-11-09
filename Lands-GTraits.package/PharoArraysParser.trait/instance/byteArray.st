as yet unclassified
byteArray

	^ super byteArray ==> [ :tokens | tokens second asByteArray lit <-> tokens ]
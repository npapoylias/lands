accessing
byteArray

	^ super byteArray ==> [ :tokens | (tokens second collect: [ :n | n value ]) asByteArray lit <-> tokens ]
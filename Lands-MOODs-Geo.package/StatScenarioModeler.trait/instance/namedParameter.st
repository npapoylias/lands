accessing
namedParameter

	^ super namedParameter ==> [ :values | values first symbol -> values last symbol ] 
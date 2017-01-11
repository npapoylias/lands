accessing
scan: aState

	(aState dotPosition > 0) ifTrue: [ super scan: aState ]. "predict already left-most derivations"
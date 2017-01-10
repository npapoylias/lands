accessing
scan: aState

	(aState dotPosition > 0) ifTrue: [ self scanUnordered: aState ]. "predict adds only left-most derivations"
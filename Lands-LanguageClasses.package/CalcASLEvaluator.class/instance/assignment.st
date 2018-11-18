as yet unclassified
assignment

	^ super assignment ==> [ :tokens | [env at: tokens first put: tokens third value] ].
	
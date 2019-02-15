as yet unclassified
containersAtTab: aTab

	^ (containers 
		at: aTab 
		ifAbsentPut: [ Dictionary new ]) 
			at: (self pagerAtTab: aTab) currentPage
			ifAbsentPut: [ OrderedCollection new ]
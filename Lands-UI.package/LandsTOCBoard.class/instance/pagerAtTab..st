as yet unclassified
pagerAtTab: aTab

	^ pagers at: aTab ifAbsentPut: [ 
			|m| m := aTab spec instance widget morph.
			"m extent: 1024@768.
			m hResizing: #spaceFill; vResizing: #spaceFill."
			SpecPager items: {m} 
	]
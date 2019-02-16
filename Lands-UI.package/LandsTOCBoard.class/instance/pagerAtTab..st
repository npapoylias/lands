as yet unclassified
pagerAtTab: aTab

	^ pagers at: aTab ifAbsentPut: [ 
			SpecPager items: {aTab spec instance widget morph}
		]
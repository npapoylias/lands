accessing
doWithIndex: aBlock 
		
	1 to: self size do:
		[:index |
		aBlock
			value: (self at: index)
			value: index]
as yet unclassified
globalArithmetic

	|params args|
	
	params := OrderedCollection new. args := OrderedCollection new.
	
	((Magnitude methods
		select: [ :m | m protocol = 'testing'])
		collect: [ :m | m selector ])
		do: [ :selector | params add: selector. args add: (PrimitiveProcedure new withSymbol: selector)].
	
	((Number methods
		select: [ :m | m protocol = 'mathematical functions' or: [ m protocol = 'arithmetic' ] ])
		collect: [ :m | m selector ])
		do: [ :selector | params add: selector. args add: (PrimitiveProcedure new withSymbol: selector). ].
	
	^ params -> args
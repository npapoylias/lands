as yet unclassified
globalOperands

	|params args|

	params := OrderedCollection new. args := OrderedCollection new.

	"other global ops ?"

	#(= class)	do: [ :selector | params add: selector. args add: (PrimitiveProcedure new withSymbol: selector) ].
	
	^ params -> args		
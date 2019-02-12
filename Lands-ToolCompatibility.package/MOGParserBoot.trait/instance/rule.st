accessing
rule

	^ super rule ==> [ :tokens | |r expressions operators operands name action| 
		"TODO: why not giving tokens the names of the symbols in MOG ?"
		expressions := tokens third key. 
		operators := tokens third value. 
		tokens size > 3 ifTrue: [ action := tokens fourth ].
		name := tokens first.
		name first = $@
			ifTrue: [ r := GrayRule new name: name allButFirst asSymbol; beAnnotated ]
			ifFalse: [r := GrayRule new name: name].
		"r := (tokens first --> expressions first asArrayIfCollection)."
		expressions size == operators size 
			ifTrue: [ r rightHandSide removeFirst. "empty" operands := expressions]
			ifFalse: [ r , expressions first asArrayIfCollection. 
				operands := expressions allButFirst. ].
		operands "allButFirst" doWithIndex: [ :e :index | 
					r 
						perform: (operators at: index) string asSymbol
						withArguments: { e asArrayIfCollection } 
		].
		action ifNil: [r] ifNotNil: [ r lit |> { #==> . action } ] 		 
	]
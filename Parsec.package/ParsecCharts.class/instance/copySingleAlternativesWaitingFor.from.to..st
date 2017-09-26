copying
copySingleAlternativesWaitingFor: aState from: start to: end

	| name chart element newState addedStates "copiedStates"|

	addedStates := ParsecCollection new.
	"copiedStates := ParsecCollection new."

	name := aState rule name.

	
	chart := (self at: aState fromTerminal + 1).

    chart size to: 1 by: -1 do: [ :index | "bottom-up"
		element := chart at: index.
		newState := element copy.
				"newState previousStates add: aState."
		newState fromTerminal: element fromTerminal; toTerminal: chartIndex - 1.
		newState advanceDot end: end.		
		((element expecting: name at: start) and: [ (addedStates anySatisfy: [:state | state alternativeOf: newState  ]) not ])
			ifTrue: [  |childrenDict|
				addedStates add: newState.
				"copiedStates add: element."
				childrenDict := (self currentAddWithState: newState) childrenStates. "will return either the newState or the identical pre-existing"
				childrenDict ~= newState childrenStates "already exists transfer children"
					ifTrue: [ newState childrenStates keysAndValuesDo: [:k :values |  
							values do: [ :v |
								|col| col := (childrenDict at: k ifAbsent: [ childrenDict at: k put: OrderedCollection new ]). 
								col detect: [ :p | p equalTo: v ] ifNone: [ col add: v].
							] 			
					]].
				"aState from ~= newState from ifTrue: [  
					self assert: (childrenDict values flatten select: [ :v | v to = aState from ]) isEmpty not.
				]."
				(childrenDict at: aState from ifAbsent: [ childrenDict at: aState from put: OrderedCollection new ])
					add: aState. "children from multiple trees"  
				
			]
	].

	"^ copiedStates"
as yet unclassified
conditional

	^ super conditional ==> { 
	
		[ :tokens | [
			tokens third value
				ifTrue: [ tokens fifth do: [ :stmt | stmt value ] ] "if else"
				ifFalse: [ (tokens at: 7) do: [:stmt | stmt value ] ]
		] ]. 

		[ :tokens | [
			tokens third value
				ifTrue: [ tokens fifth do: [ :stmt | stmt value ] ] "if"
		] ].

	}
	
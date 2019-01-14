as yet unclassified
mogErrorPostCard

	^ [1 to: 2 do: [ :i | [pharoMOGrammar parse: self errorPostCard] on: GrayError do: [ self ]]] timeToRun
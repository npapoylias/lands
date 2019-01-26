as yet unclassified
ppcErrorPostCard

	^ [1 to: 2 do: [ :i | [(Error new signal: (ppcGrammar parse: self errorPostCard) message) ] on: Error do: [ self ]]] timeToRun
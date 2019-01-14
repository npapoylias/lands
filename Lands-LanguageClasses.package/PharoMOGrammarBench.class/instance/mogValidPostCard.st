as yet unclassified
mogValidPostCard

	^ [  1 to: self times do: [ :i | pharoMOGrammar parse: self validPostCard ]] timeToRun
as yet unclassified
ppcValidPostCard

	^ [  1 to: self times do: [ :i | ppcGrammar parse: self validPostCard ]] timeToRun
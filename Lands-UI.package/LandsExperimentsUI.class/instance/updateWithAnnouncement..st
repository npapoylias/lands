as yet unclassified
updateWithAnnouncement: ann
	
	containers ifNotEmpty: [
		|last| last := (containers 
			detect: [ :c | c layoutClass = ann layoutClass ] 
			ifNone: [ nil ]). 
		last ifNotNil: [last size > 1 ifTrue: [last removeLast]]
	].
	myWindow announcer announce: (ScrollIt with: ann result positioned: ann layout)
as yet unclassified
scrollWithAnnouncement: ann
	self halt.
	self containersAtTab ifNotEmpty: [
		|last| last := (self containersAtTab 
			detect: [ :c | c layoutClass = ann layoutClass ] 
			ifNone: [ nil ]). 
		last ifNotNil: [last size > 1 ifTrue: [last removeLast]]
	].
	myWindow announcer announce: (BoardIt with: ann result positioned: ann layout)
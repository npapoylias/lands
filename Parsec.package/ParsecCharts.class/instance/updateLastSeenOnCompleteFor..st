recursive-ordering
updateLastSeenOnCompleteFor: aState
	|s|
	"aState rule name = #message ifTrue: [ self halt ]."
	s := lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
	s ifNotEmpty: [ s pop ].  
recursive-ordering
exitCurrentLastSeenScope
	"self memoizeLastSeenIndex."
	lastSeenStack size = 1 
		ifTrue: [ lastSeenStack at: 1 put: Dictionary new ] 
		ifFalse: [ lastSeenStack pop].

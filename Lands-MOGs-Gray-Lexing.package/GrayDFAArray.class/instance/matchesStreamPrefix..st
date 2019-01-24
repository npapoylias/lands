instance creation
matchesStreamPrefix: s

	|index initPosition endPos c row|
	index := 1.
	initPosition := s position.
	row := array at: index. 
	[ 
		(row at: 257) ifTrue: [ endPos := s position ]. "next may proceed without succeeding"
		(c := s next) 
			ifNil: [ false ] "handle unicode for now -- by assuming 256 as a . for everything above ascii"
			ifNotNil: [(index := row at: ((c asciiValue + 1) min: 256)) isNotNil]  
	] whileTrue: [ row := array at: index].
	
	^ endPos 
		ifNil: [ s directSetPos: initPosition. false] "maybe in a end state"
		ifNotNil: [ s directSetPos: endPos. true ]

	
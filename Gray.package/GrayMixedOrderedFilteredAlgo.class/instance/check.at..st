as yet unclassified
check: predict at: position

	1 to: predict size do: [ :i | |pRule|
		pRule := predict at: i. 
		pRule isEmptyOrEof
			ifTrue: [ ^ true ]
			ifFalse: [ (self try: pRule at: position) ifTrue: [ ^ true ] ] ].
	^ false
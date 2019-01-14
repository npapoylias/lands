as yet unclassified
"protocol: as yet unclassified"
check: aSet at: position

	aSet do: [ :pRule|
		pRule isEmptyOrEof
			ifTrue: [ ^ true ]
			ifFalse: [ (self try: pRule at: position) ifTrue: [ ^ true ] ] ].
	^ false
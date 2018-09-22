parsing
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [ |aState|
				aState := self backTrack.
				aState ifNotNil: [ |s| "It can be replacing smth else from complete..."
					"so we need actually here the one that was replaced or both."
					s := lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
					s ifNotEmpty: [s pop].
					"s push: aState rightHandIndex." "rety this"
				].
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
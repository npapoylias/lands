parsing
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [ |aState|
				aState := self backTrack.
				aState ifNotNil: [ |s|
					s := lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ].
					s ifNotEmpty: [s pop].
					"s push: aState rightHandIndex."
				].
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
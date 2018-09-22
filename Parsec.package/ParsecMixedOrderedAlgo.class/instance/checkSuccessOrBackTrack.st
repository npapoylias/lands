changing suspended state
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [ |aState|
				aState := self backTrack.
				aState ifNotNil: [ |s|
					s := lastSeenIndex at: aState rule parent ifAbsentPut: [ Stack new ].
					s ifNotEmpty: [s pop].
					s push: (aState rule parent indexOf: aState rule)
				].
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
parsing
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [ |states newState oldState|
				states := self backTrack.
				newState := states value.
				oldState := states key.
				oldState ifNotNil: [ |s| "It can be replacing smth else from complete..."
					"so we need actually here the one that was replaced or both."
					s := lastSeenIndex at: oldState rule name ifAbsentPut: [ Stack new ].
					s ifNotEmpty: [s pop].
					"s push: newState rightHandIndex." "rety this ? should be repeated normally from recursive alternatives"
				].
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
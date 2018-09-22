parsing
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [ |states newState oldState|
				states := self backTrack.
				newState := states value.
				oldState := states key.
				oldState ifNotNil: [ |s| 
					s := lastSeenIndex at: oldState rule name ifAbsentPut: [ Stack new ].
					s ifNotEmpty: [s pop]
				].
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
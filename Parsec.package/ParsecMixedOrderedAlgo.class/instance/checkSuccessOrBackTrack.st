parsing
checkSuccessOrBackTrack

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ |states newState oldState|
				states := self backTrack.
				states ifNotNil: [
					newState := states value.
					oldState := states key.
					oldState ifNotNil: [ |s| 
						s := lastSeenIndex at: oldState rule topLevelParent name ifAbsentPut: [ Stack new ].
						s ifNotEmpty: [s pop]
					].
					"self halt."
					self algoLoop.
					self checkSuccessOrBackTrack
				]
		]
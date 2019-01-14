parsing
checkSuccessOrBackTrack

	[(charts last anySatisfy: [ :state | state isFinal ])
		or: [ backTrackStack isEmpty ]] whileFalse: [  
				self backTrack.
				self algoLoop.
		]
parsing
checkSuccessOrBackTrack

	self halt.

	charts last
		detect: [ :state | state isFinal ]
		ifNone: [ 
			backTrackStack isEmpty ifFalse: [  
				self backTrack.
				self algoLoop.
				self checkSuccessOrBackTrack 
			]
		]
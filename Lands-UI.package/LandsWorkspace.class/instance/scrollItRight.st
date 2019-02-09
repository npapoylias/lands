lands-extentions
scrollItRight

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (ScrollIt with: r positioned: #right) 
	]
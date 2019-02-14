lands-extentions
boardItRight

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (BoardIt with: r positioned: #right) 
	]
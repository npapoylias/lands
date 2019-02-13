lands-extentions
updateIt

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (UpdateIt with: r positioned: #down) 
	]  
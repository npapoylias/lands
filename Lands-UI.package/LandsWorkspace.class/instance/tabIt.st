lands-extentions
tabIt

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (TabIt with: r) 
	]
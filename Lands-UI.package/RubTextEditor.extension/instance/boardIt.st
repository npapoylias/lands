*Lands-UI-Editor
boardIt

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (BoardIt with: r positioned: #down) 
	]
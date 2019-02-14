*Lands-UI-Editor
scrollIt

	^ self evaluate: self selection asString andDo: [ :r | 
			self textArea topLevelSpecAnnouncer announce: (ScrollIt with: r) 
	]
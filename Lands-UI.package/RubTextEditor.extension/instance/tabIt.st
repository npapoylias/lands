*Lands-UI-Editor
tabIt

	^ self evaluate: self selection asString andDo: [ :r | 
			self topLevelSpecAnnouncer announce: (TabIt with: r) 
	]
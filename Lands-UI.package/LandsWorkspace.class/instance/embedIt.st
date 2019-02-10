lands-extentions
embedIt

	^ self evaluate: self selection asString andDo: [:result |
			self embed: (self inspectorMorphFor: result).
	].

lands-extentions
embedIt

	^ self evaluate: self selection asString andDo: [:result |   
			self replaceSelectionWith: 
				self selection , 
				Character cr asText , 
				"EllipseMorph new asText, "
				(self inspectorMorphFor: result) asText
	].
	"42"
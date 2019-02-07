lands-extentions
embedIt

	^ self evaluate: self selection asString andDo: [:result | |oldInterval|
			oldInterval := self selectionInterval.  
			self toggleStylingActive.
			self textArea setText: 
				((self text copyFrom: 1 to: oldInterval last)
					append: Character cr asText;
					append: Character cr asText;
					append: '"' asText; 
					append: (self inspectorMorphFor: result);
					append: '"' asText;
					append: (self text copyFrom: oldInterval last + 1 to: self text size)).
			self toggleStylingActive.
	].
	"42"
lands-extentions
embedIt

	^ self evaluate: self selection asString andDo: [:result |
			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: $"; yourself) contents at: self selectionInterval last.
			self editMorph "revisit centered" 
				anchorCenteredMorph:(self inspectorMorphFor: result)
				at: self selectionCornerAsGlobalBound
				type: #inline.
			self augmentSelectionBy: 2.
			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: $";
				nextPut: Character cr; yourself) contents at: self selectionInterval last.
	].
	"42"
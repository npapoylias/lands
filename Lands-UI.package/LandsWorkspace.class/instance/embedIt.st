lands-extentions
embedIt

	^ self evaluate: self selection asString andDo: [:result | |m|
			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: $"; yourself) contents at: self selectionInterval last.
			m := self inspectorMorphFor: result.
			"m := Morph new extent: 600@480."
			CloseDecorator new on: m.
			self editMorph "revisit centered" 
				anchorMorph: m
				at: self selectionCornerAsGlobalBound
				type: #inline.
			self augmentSelectionBy: 2.
			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: $";
				nextPut: Character cr; yourself) contents at: self selectionInterval last.
			"self selectionAtInput."
	].
	"42"
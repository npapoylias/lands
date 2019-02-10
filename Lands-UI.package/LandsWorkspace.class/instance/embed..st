lands-extentions
embed: aMorph

			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: $"; yourself) contents at: self selectionInterval last.
			"m := Morph new extent: 600@480."
			CloseDecorator new on: aMorph.
			self editMorph "revisit centered" 
				anchorMorph: aMorph
				at: self selectionCornerAsGlobalBound
				type: #inline.
			self augmentSelectionBy: 2.
			self insert: ((WriteStream on: String new)
				nextPut: Character cr;
				nextPut: $";
				nextPut: Character cr; yourself) contents at: self selectionInterval last.
			"self selectionAtInput."
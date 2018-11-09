adding
deepFlatten

	^ Array streamContents: [ :stream |
			self do: [ :each | each deepFlattenInto: stream ]]
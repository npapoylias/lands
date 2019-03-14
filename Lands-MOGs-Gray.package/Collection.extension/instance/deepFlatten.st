*Lands-MOGs-Gray
deepFlatten

	^ Array streamContents: [ :stream |
			self do: [ :each | each deepFlattenInto: stream ]]
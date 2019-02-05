accessing
layoutClass

	^ layoutClass ifNil: [ layoutClass := SpecColumnLayout ]
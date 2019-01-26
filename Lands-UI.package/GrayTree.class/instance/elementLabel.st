accessing
elementLabel

	^ RTLabeled new
		color: Color black;
		fontSize: 18;
		center;
		setAsShouldBeInTheFront;
		text: [ :n | 
			n = modelRoot
				ifTrue: [ '#' , (self forestIndexFor: modelRoot) asString , ' of '
						, (modelRoot perform: childrenSelector) size asString ]
				ifFalse: [ self labelForElement: n ] ]
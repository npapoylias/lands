action
childrenForest

	^ childrenForest := self populate: ParsecCollection new with: (childrenStates at: self from).


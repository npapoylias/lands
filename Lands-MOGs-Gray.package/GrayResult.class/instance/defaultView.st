accessing
defaultView
	ambiguous ifFalse: [self childrenForest first first childrenForest]. "populate forest for viz" 			
	^ GrayTree defaultViewFor: self
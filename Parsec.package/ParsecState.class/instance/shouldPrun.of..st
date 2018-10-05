action
shouldPrun: tree of: child

	^ tree isEmpty
		ifTrue: [ true ]
		ifFalse: [(child from == tree first from and: [ child to == tree last to ]) not]
		
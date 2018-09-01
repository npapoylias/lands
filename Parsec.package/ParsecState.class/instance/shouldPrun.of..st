action
shouldPrun: tree of: child

	^ (child from == tree first from and: [ child to == tree last to ]) not
		
		
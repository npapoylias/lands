action
valueRoot: input withAlternatives: alternatives

	^ values 
		add: (self value: input withRoot: self peeking: alternatives); yourself
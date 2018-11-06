eval
eval: atomOrList

	^ self default
		eval: atomOrList
		in: Environment global.
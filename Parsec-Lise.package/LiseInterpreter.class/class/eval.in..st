eval
eval: atomOrList in: anEnvironment

	^ self default
		eval: atomOrList
		in: anEnvironment.
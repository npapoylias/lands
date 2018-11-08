accessing
specialForm

	^ super specialForm ==> { 
		[ :values | values second ].
		[ :values | (values second |> { #ifTrue: . { values third } block . #ifFalse: . { values fourth  } block }) <-> values ].
		[ :values | { 
				values second var <-> values second.
				values second === values third <-> values
			}
		].
		[ :values | values second symbol === values third <-> values ].
		[ :values | (values third block arguments: values second) <-> values ].
		[ :values | values allButFirst block <-> values ]
	}
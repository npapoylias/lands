accessing
specialForm

	^ super specialForm ==> { 
		[ :values | values second ].
		[ :values | (values second |> { #ifTrue: . values third . #ifFalse: values fourth }) <-> values ].
		[ :values | { 
				values second var <-> values second.
				values second symbol === values third <-> values
			}
		].
		[ :values | values second symbol === values third <-> values ].
		[ :values | (values third block arguments: values second) <-> values ]
	}
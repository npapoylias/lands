accessing
specialForm

	^ super specialForm ==> { 
		[ :values | values second ].
		[ :values | (values nodes first |> { #ifTrue:ifFalse: . values nodes allButFirst }) <-> values ].
		[ :values | { 
				values second var <-> values second.
				values second symbol === values third <-> values
			}
		].
		[ :values | values second symbol === values third <-> values ].
		[ :values | (values third block arguments: values second) <-> values ]
	}
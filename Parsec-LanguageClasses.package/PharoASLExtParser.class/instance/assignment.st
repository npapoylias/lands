Parsec-LanguageClasses
assignment

	^ super assignment ==> {
		[ :values | values first === values third <-> values ].
		[ :values | 
			values third isAssociation
				ifFalse: [values first |> { #at: . values third . #put: values last } <-> values ]
				ifTrue: [ values first |> { 
					#copyReplaceFrom: values third key . 
					#to: . values third value . 
					#with: . values last } <-> values ] "slice with association"
		].
	}  
Parsec-LanguageClasses
impIndexingAssignment

	^ super impIndexingAssignment ==> [ :values | 
			values first isAssociation
				ifFalse: [{ #at: . values third . #put: values last } ]
				ifTrue: [ { 
					#copyReplaceFrom: values third key . 
					#to: . values third value . 
					#with: . values last } ] "slice with association"
		]
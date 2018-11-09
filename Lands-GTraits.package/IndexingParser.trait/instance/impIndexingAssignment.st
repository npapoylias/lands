accessing
impIndexingAssignment

	^ super impIndexingAssignment ==> [ :values | 
			values first isAssociation
				ifFalse: [{ #at: . values first . #put: . values last } ]
				ifTrue: [ { 
					#copyReplaceFrom: values first key . 
					#to: . values first value . 
					#with: . values last } ] "slice with association"
		]
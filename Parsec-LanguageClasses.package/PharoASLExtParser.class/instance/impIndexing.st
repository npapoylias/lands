Parsec-LanguageClasses
impIndexing

	^ super impIndexing ==> [ :values | 
		values second isAssociation
			ifTrue: [ { #copyFrom: . values second key . #to: . values second value } <-> values ]
			ifFalse: [ {#at: . values second } <-> values  ]
	].
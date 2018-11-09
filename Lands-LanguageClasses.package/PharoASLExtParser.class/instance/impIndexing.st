Parsec-LanguageClasses
impIndexing

	^ super impIndexing ==> [ :values | 
		values isAssociation
			ifTrue: [ { #copyFrom: . values key . #to: . values value } ]
			ifFalse: [ {#at: . values } ]
	].
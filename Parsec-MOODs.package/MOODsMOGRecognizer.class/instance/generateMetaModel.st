as yet unclassified
generateMetaModel

	|packageName |
	 
	packageName := self metaModelNameFor: self class name.
	stateDictionary keysAndValuesDo: [ :name :ivs | |class|
		class := Object subclass: (self metaModelNameFor: name)
						instanceVariableNames: ivs
						classVariableNames: ''
						package: packageName.
		(validationDictionary at: name) do: [ :validationMethod | 
			class compile: (self class >> validationMethod) source.
			class compile: validationMethod allButLast	, '
				^ ' , validationMethod allButLast
		]
	].
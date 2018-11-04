as yet unclassified
generateMetaModel

	|packageName |
	 
	packageName := self metaModelNameFor: self class name.
	stateDictionary keysAndValuesDo: [ :name :vars | |class ivs|
		ivs := vars inject: '' into:  [ :subTotal :next | subTotal , next asString , ' ' ].
		class := Object subclass: (self metaModelNameFor: name)
						instanceVariableNames: ivs
						classVariableNames: ''
						package: packageName.
		vars do: [:iv | class compile: iv asString	, '
		^ ' , iv asString
		].
		(validationDictionary at: name) do: [ :validationMethod | 
			class compile: (self class >> validationMethod) sourceCode
		].
	]
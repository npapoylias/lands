as yet unclassified
generateMetaModel
	"should clean here to remove first when re-generating ?"

	| packageName |
	packageName := self metaModelNameFor: self class name.
	Transcript show: 'Generating Meta-model for: ', packageName; cr.
	stateDictionary
		keysAndValuesDo: [ :name :vars | 
			| c ivs |
			ivs := vars inject: '' into: [ :subTotal :next | subTotal , next asString , ' ' ].
			Author useAuthor: 'Lands-MOODs' during: [ 
				c := MOODsEntity
					subclass: (self metaModelNameFor: name)
					instanceVariableNames: ivs
					classVariableNames: ''
					package: packageName
			].
			vars
				do: [ :iv | 
					c
						compileSilently:
							iv asString
								,
									'
		^ ' , iv asString ].
			(validationDictionary at: name) do: [ :validationMethod | c compileSilently: (self class >> validationMethod) sourceCode ] ]
installing
createClass
	| trait |
	trait := GrammarTrait
		named: name
		uses: (Smalltalk compiler evaluate: self traitCompositionString)
		category: category.
	trait ifNotNil: [trait classComment: comment stamp: commentStamp].
	^trait
*Gray
asRule

	| rule op|

	rule := GraySubRule new name: ('t' , self hash asString) asSymbol.

	op := #,.
	
	self doWithIndex: [ :item :index | "catch unary" 
		(self catchUnaryFor: rule at: index given: op)
			ifFalse: [  
				(GrayGrammar unaryOps includes: item) "ignore cause it was handled as unary"
					ifFalse: [  
						(item isSymbol and: [GrayGrammar binaryOps includes: item])
							ifTrue: [ op := item ]
							ifFalse: [  rule perform: op withArguments: {item} ]
				]
			]
	].

	^ rule
adding
markFailureFor: aState
	aState
		ifNotNil: [ 
			(aState canBeCompleted and: [ aState isStarting not ])
				ifFalse:
					[ 
						((failures at: aState fromTerminal + 1 ifAbsentPut: [ Dictionary new ]) 
							at: aState rule name ifAbsentPut: [ Set new ])
							add: aState ].
			self
				do: [ :s | 
					(s state equalTo: aState)
						ifTrue: [ s failed ] ] 
		]
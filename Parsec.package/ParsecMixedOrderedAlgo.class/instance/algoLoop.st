parsing
algoLoop

	[ charts
		currentDo: [ :state | |s|
							"state ruleAtDot name = #expression ifTrue: [ self halt ]."
			(state ruleAtDot isNotNil and: [ state ruleAtDot isOrdered ]) ifTrue: [ 
				s := lastSeenIndex at: state ruleAtDot topLevelParent name ifAbsent: [ 1 ].
				s isCollection
				ifTrue: [ s isEmpty 
					ifTrue: [ s := 1 ] 
					ifFalse: [ 
						s := s top. 
						s := s + (state ruleAtDot topLevelParent directRefsAt: s) first recursiveIndex. 
					] 
				]
			] ifFalse: [ s := 1 ].			
			Transcript
				show: $|; show: s; show: $|; cr.
			self algoStepOn: state 
		];
		proceed ] whileTrue
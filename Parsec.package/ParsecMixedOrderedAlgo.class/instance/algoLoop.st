parsing
algoLoop

	[ charts
		currentDo: [ :state | |s|
							"state ruleAtDot name = #expression ifTrue: [ self halt ]."
			"state ruleAtDot ifNotNil: [ 
				s := lastSeenIndex at: state ruleAtDot name ifAbsent: [ 1 ].
			] ifNil: [ s := 1 ].
			s isCollection
				ifTrue: [ s isEmpty 
					ifTrue: [ s := 1 ] 
					ifFalse: [ 
						s := s top. 
						s := s + (state ruleAtDot directRefsAt: s) first recursiveIndex. 
					] 
			].
			Transcript
				show: $|; show: s; show: $|; cr."
			self algoStepOn: state 
		];
		proceed ] whileTrue
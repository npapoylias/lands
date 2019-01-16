initialization
check: completingState at: to
	"save chart states by look-ahead -- currently disabled" 
	|rule|
	
	rule := completingState oneAfterDot ifNil: [ ^ (algo check: completingState rule follow at: to) or: [ completingState ruleAtDot isEof ] ].
	rule isTerminal ifTrue: [ rule isEmptyOrEof ifTrue: [ true ] ifFalse: [algo try: rule at: to] ]. "scan ?"
	1 to: rule rightHandSide size do: [ :i | "we can use either predict either first here"
		((rule directRefsAt: i) first isNot | (algo check: (rule predict at: i) at: to))
				ifTrue: [ ^ true ] 
	].
	^ false
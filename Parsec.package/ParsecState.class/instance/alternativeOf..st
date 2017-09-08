as yet unclassified
alternativeOf: anotherState

	^ rule == anotherState rule
	and: [dotPosition == anotherState dotPosition
	and: [ from == anotherState from 
	and: [ to == anotherState to ]]]
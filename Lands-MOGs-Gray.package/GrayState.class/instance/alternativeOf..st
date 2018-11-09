as yet unclassified
alternativeOf: anotherState

	^ ((rule == anotherState rule & rule isOrdered) 
	or: [rule parent == anotherState rule parent & rule parent isOrdered])
	and: [dotPosition == anotherState dotPosition
	and: [ from == anotherState from 
	and: [ to == anotherState to ]]]
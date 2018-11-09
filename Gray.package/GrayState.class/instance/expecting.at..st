as yet unclassified
expecting: name at: start
	^ to == start
		and: [ self isIncomplete and: [ self ruleAtDot name == name ]]
			
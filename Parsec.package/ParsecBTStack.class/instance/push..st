adding
push: anItem


	"self 
		detect: [ :state | state hasFailed and: [state equalTo: anItem ]]
		ifNone: [" self add: anItem "]"
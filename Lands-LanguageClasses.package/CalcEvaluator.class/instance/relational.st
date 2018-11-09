as yet unclassified
relational

	^ super relational ==> {  
			[ :tokens | [tokens first value > tokens last value] ]. 
			[ :tokens | [tokens first value < tokens last value] ]. 
			[ :tokens | [tokens first value == tokens last value] ]. 
			[ :tokens | [tokens first value ~= tokens last value] ].
			[ :tokens | [tokens first value >= tokens last value] ].
			[ :tokens | [tokens first value <= tokens last value] ].
		}  
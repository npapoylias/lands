rules
numerical

	^ super numerical ==> {  
			[ :tokens | tokens second ].
			[ :token 	 | [env at: token]  ].
			[ :token  | token  tokenValue asNumber ]. 
			[ :tokens | [tokens first value + tokens last value] ]. 
			[ :tokens | [tokens first value - tokens last value] ]. 
			[ :tokens | [tokens first value * tokens last value] ]. 
			[ :tokens | [tokens first value / tokens last value] ].
			[ :tokens | [tokens first value % tokens last value] ].
			[ :tokens | [tokens first value raisedTo: tokens last value] ].
		}  
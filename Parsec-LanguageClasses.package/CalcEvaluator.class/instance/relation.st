Parsec-LanguageClasses
relation

	^ super expression ==> {  
			[ :tokens | tokens second ].
			[ :tokens | tokens first > tokens last ]. 
			[ :tokens | tokens first < tokens last ]. 
			[ :tokens | tokens first == tokens last ]. 
			[ :tokens | tokens first ~= tokens last ].
			[ :tokens |  tokens first >= tokens last ].
			[ :tokens |  tokens first <= tokens last ].
		}  
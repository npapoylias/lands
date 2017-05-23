accessing
unaryOp

	^ super unaryOp ==> {
		[ :tokens | tokens first star ]. 
		[ :tokens | tokens first staro ]."staro" "concrete examples of difference"
		[ :tokens | tokens first plus ].
		[ :tokens | tokens first pluso ]."pluso ?" "concerte example of difference"
		[ :tokens | tokens first opt ].
		[ :tokens | tokens first opto ]."opto" "concrete example of difference"
		[ :tokens | tokens second and ].
		[ :tokens | tokens first not ]
	}.
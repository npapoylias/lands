accessing
unaryOp

	^ unaryOp --> atom , '\*' ==> [ :tokens | tokens first star ] 
		| atom , '/*' ==> [ :tokens | tokens first staro ]"staro" "concrete examples of difference"
		| atom , '\+' ==> [ :tokens | tokens first plus ]
		| atom , '/+' ==> [ :tokens | tokens first pluso ]"pluso ?" "concerte example of difference"
		| atom , '\?' ==> [ :tokens | tokens first opt ]
		| atom , '/?' ==> [ :tokens | tokens first opto ]"opto" "concrete example of difference"
		| '&' , atom ==> [ :tokens | tokens second and ]
		| '!' , atom ==> [ :tokens | tokens first not ]
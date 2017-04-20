accessing
unaryOp

	unaryOp --> atom , '\*' "should add staro ?"
		| atom , '\+' "should add pluso ?"
		| atom , '\?' "should add opto"
		| '&' , atom
		| '!' , atom
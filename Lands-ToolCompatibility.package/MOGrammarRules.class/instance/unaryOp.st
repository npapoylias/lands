accessing
"protocol: accessing"
unaryOp

	^ unaryOp --> atom , '\*' 
		| atom , '/\*' 
		| atom , '\+' 
		| atom , '/\+' 
		| atom , '\?' 
		| atom , '/\?' 
		| '&' , atom 
		| '!' , atom 
accessing
bracketBlock

	^ super bracketBlock ==> { 
		[:values | self 
			token: values first color: Color orange; token: values first emphasis: #bold;
			token: values last color: Color orange; token: values last emphasis: #bold
		].
		[ :values | values ].
		[ :values | values ]
	}
	
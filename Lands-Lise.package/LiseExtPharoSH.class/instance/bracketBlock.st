accessing
bracketBlock

	^ super bracketBlock ==> { 
		[:values | self 
			region: values first color: Color orange; region: values first emphasis: #bold;
			region: values last color: Color orange; region: values last emphasis: #bold
		].
		[ :values | values ].
		[ :values | values ]
	}
	
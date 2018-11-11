accessing
statement

	^ super statement ==> { 
		[ :values | values ].
		[ :values | self token: values first color: #orange; token: values first emphasis: #bold ].
		[ :values | self token: values first color: #orange; token: values first emphasis: #bold ].
		[ :values | self token: values first color: #orange; token: values first emphasis: #bold ].
		[ :values | values ]
	}

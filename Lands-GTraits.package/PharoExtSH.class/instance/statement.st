accessing
statement

	^ super statement ==> { 
		[ :values | values ].
		[ :values | self region: values first color: #orange; region: values first emphasis: #bold ].
		[ :values | self region: values first color: #orange; region: values first emphasis: #bold ].
		[ :values | values ].
		[ :values | values ]
	}

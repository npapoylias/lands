accessing
message

	^ super message ==> {
		[ :values | values ].
		[ :values | values ].
		[ :token | self token: token color: Color green; token: token emphasis: #italic; token: token emphasis: #bold ].
		[ :values | values ].
		[ :values | values ].
		[ :values | values ].
		[ :values | values ].
	}
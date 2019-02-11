accessing
message

	^ super message ==> {
		[ :values | values ].
		[ :values | values ].
		[ :token | self region: token color: Color green; region: token emphasis: #italic; region: token emphasis: #bold ].
	}
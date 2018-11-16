accessing
unaryOp

	^ super unaryOp ==> { 
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values second color: #orange emphasis: #bold ].
			[ :values | self region: values first color: #orange emphasis: #bold ].
			[ :values | self region: values first color: #orange emphasis: #bold].
	}
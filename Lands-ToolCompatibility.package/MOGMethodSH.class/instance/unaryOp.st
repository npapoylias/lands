accessing
unaryOp

	^ super unaryOp ==> { 
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values second color: #magenta emphasis: #bold ].
			[ :values | self region: values first color: #magenta emphasis: #bold ].
			[ :values | self region: values first color: #magenta emphasis: #bold].
	}
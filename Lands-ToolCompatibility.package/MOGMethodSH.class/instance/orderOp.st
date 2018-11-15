accessing
orderOp

	^ super orderOp ==> { 
			[ :values | self region: values second color: #white emphasis: #bold ].
	}
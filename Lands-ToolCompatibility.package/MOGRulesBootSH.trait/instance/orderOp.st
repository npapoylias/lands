accessing
orderOp

	^ super orderOp ==> { 
			[ :values | self region: values color: #orange emphasis: #bold ].
	}
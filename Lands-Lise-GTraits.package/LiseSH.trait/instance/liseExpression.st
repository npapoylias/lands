accessing
liseExpression

	^ super liseExpression ==> {
		[:values | self startEndHighlighting: values ].
		[:values | self startEndHighlighting: values ].
		[:values | self region: values color: #yellow ].
		[:values | self startEndHighlighting: values  ].
		[:values | values ].
		[:values | values ].
	}.
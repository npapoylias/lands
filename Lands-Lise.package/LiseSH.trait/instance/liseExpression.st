accessing
liseExpression

	^ super liseExpression ==> {
		[:values | self startEndHighlighting: values ].
		[:values | self startEndHighlighting: values ].
		[:values | self token: values color: #yellow ].
		[:values | self startEndHighlighting: values  ].
		[:values | values ].
		[:values | values ].
	}.
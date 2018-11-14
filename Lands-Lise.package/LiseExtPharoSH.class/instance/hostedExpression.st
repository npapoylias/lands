accessing
hostedExpression

	^ super hostedExpression ==> [:values | self startEndHighlighting: values ].

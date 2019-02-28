accessing
bareSymbol

	^ super bareSymbol ==> [ :values | self region: values color: #cyan emphasis: #italic]
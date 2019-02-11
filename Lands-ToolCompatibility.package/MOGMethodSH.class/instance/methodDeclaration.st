accessing
methodDeclaration

	^ super methodDeclaration ==> [ :token | 
			self region: token font: 'Russo One' size: 15
			"self 
				region: token color: Color green; "
				"region: token emphasis: #underlined;"
				"region: token emphasis: #bold; 
				region: token size: 13"
	]
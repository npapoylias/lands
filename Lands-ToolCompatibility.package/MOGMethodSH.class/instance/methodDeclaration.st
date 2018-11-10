accessing
methodDeclaration

	^ super methodDeclaration ==> [ :token | 
			[self halt. token color: #blue; emphasis: #underlined; size: 20] fork
	]
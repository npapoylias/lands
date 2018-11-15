accessing
methodDeclaration

	^ super methodDeclaration ==> [ :token | 
			self 
				region: token color: Color white; 
				region: token emphasis: #underlined;
				region: token emphasis: #bold; 
				region: token size: 13
	]
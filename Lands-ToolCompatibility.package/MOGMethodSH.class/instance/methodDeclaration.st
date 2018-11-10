accessing
methodDeclaration

	^ super methodDeclaration ==> [ :token | 
			self 
				token: token color: Color white; 
				token: token emphasis: #underlined;
				token: token emphasis: #bold; 
				token: token size: 13
	]
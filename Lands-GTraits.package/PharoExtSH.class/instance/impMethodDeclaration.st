accessing
impMethodDeclaration

	^ super impMethodDeclaration ==> [ :values | 
			self 
				token: values first color: Color orange. 
			self token: values emphasis: #italic; 
				token: values emphasis: #bold 
	]
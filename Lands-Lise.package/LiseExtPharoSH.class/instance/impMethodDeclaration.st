accessing
impMethodDeclaration

	^ super impMethodDeclaration ==> [ :values | 
			self 
				region: values first color: Color orange. 
			self region: values emphasis: #italic; 
				region: values emphasis: #bold 
	]
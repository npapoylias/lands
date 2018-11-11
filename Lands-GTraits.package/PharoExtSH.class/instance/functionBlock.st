accessing
functionBlock
	
	^ super functionBlock ==> [ :values | 
			self 
				token: values first color: Color orange;
				token: values first emphasis: #bold.
			self 
				token: values third color: Color orange;
				token: values third emphasis: #bold.  
		]


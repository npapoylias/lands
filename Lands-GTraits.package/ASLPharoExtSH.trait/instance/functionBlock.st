accessing
functionBlock
	
	^ super functionBlock ==> [ :values | 
			self 
				region: values first color: Color orange;
				region: values first emphasis: #bold.
			self 
				region: values third color: Color orange;
				region: values third emphasis: #bold.  
		]


accessing
paren

	^ super paren ==> [ :values | 
			self token: values first emphasis: #bold.
			self token: values last emphasis: #bold	
	].
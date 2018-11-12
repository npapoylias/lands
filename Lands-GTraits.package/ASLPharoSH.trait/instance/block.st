accessing
block

	^ super block ==> [ :values | 
			self token: values first emphasis: #bold.
			self token: values last emphasis: #bold	
	].
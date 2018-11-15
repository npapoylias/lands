accessing
block

	^ super block ==> [ :values | 
			self region: values first emphasis: #bold.
			self region: values last emphasis: #bold	
	].
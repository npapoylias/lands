accessing
dynArray

	^ super dynArray ==> [ :values | 
			self region: values first emphasis: #bold.
			self region: values last emphasis: #bold	
	].
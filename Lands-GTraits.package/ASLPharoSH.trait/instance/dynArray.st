accessing
dynArray

	 
	^ super dynArray ==> [ :tokens |   
			self region: tokens first color: Color white emphasis: #bold.
			self region: tokens last color: Color white emphasis: #bold.
	]
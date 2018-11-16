accessing
delimeterStar


	 
	^ super delimeterStar ==> [ :tokens |   
			self region: tokens first color: Color orange emphasis: #bold.
			self region: tokens last color: Color orange emphasis: #bold.
	]
accessing
delimeterStar


	 
	^ super delimeterStar ==> [ :tokens |   
			self region: tokens first color: Color yellow emphasis: #bold.
			self region: tokens last color: Color yellow emphasis: #bold.
	]
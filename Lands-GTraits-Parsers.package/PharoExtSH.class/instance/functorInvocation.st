accessing
functorInvocation

	^ super functorInvocation ==> [ :values | 
			self region: values first color: Color orange;
				region: values first emphasis: #bold.
			self region: values last color: Color orange; 
				region: values last emphasis: #bold	
	].
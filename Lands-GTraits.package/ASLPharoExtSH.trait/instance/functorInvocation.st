accessing
functorInvocation

	^ super functorInvocation ==> [ :values | 
			self token: values first color: Color orange;
				token: values first emphasis: #bold.
			self token: values last color: Color orange; 
				token: values last emphasis: #bold	
	].
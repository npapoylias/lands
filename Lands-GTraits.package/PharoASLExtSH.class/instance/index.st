accessing
index

	^ super index ==> [ :values | 
			self token: values first color: Color orange;
				token: values first emphasis: #bold.
			self token: values third color: Color orange;
				token: values third emphasis: #bold.
			self token: values last color: Color orange; 
				token: values last emphasis: #bold	
	].
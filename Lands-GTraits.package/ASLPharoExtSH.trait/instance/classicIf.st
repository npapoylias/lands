accessing
classicIf


	^ super classicIf ==> {  
			[ :values | 
				self token: values first color: #orange; token: values first emphasis: #bold. 
				self token: values fourth color: #orange; token: values fourth emphasis: #bold 
			].
			[ :values | self token: values first color: #orange; token: values first emphasis: #bold ]
	}
	
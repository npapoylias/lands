accessing
classicIf


	^ super classicIf ==> {  
			[ :values | 
				self region: values first color: #orange; region: values first emphasis: #bold. 
				self region: values fourth color: #orange; region: values fourth emphasis: #bold 
			].
			[ :values | self region: values first color: #orange; region: values first emphasis: #bold ]
	}
	
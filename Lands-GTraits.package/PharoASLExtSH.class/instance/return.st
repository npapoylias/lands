accessing
return

	^ super return ==> [ :values | self token: values first emphasis: #bold ]
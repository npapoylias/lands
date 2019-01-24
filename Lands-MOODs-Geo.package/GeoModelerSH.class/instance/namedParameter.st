accessing
namedParameter

	^ super namedParameter ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values second emphasis: #bold.
	]
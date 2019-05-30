accessing
funcMethod

	^ super funcMethod ==> { 
		[:values | 
	
			self startEndHighlighting: values.
			self region: values second color: #orange emphasis: #italic font: 'Russo One' size: 15.
			self region: values third color: #green emphasis: #italic font: 'Russo One' size: 15.
			"self startEndHighlighting: values fourth.
			self region: values fourth first color: #green."
		
		].
		[:values | 
	
			self startEndHighlighting: values.
			self region: values second color: #orange emphasis: #italic font: 'Russo One' size: 15.
			self region: values third color: #magenta emphasis: #bold.
			self region: values fourth color: #green emphasis: #italic font: 'Russo One' size: 15.
			self region: values fifth font: 'Russo One' size: 15.
			self region: values sixth color: #magenta emphasis: #bold.
			"self region: values second second color: #orange.
			self region: values fourth first color: #green."
		
		].
	
	}
	
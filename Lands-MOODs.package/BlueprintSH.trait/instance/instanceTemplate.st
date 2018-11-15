accessing
instanceTemplate

	^ super instanceTemplate ==> [ :values | 
		self region: values first color: #yellow emphasis: #bold.
		self region: values second color: #cyan emphasis: #italic.
		values size = 5
			ifTrue: [ 
				self region: values third color: #green emphasis: #bold. 
			]
			ifFalse: [ 
				self region: values third emphasis: #bold.
				self region: values fourth color: #cyan emphasis: #italic.
				self region: values fifth color: #green emphasis: #bold. 
			].
		self region: values last color: #green emphasis: #bold.
	]
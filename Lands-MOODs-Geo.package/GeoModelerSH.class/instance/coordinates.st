accessing
coordinates

	^ super coordinates ==> [ :values | 
			self region: values first color: #orange emphasis: #bold.
			self region: values second emphasis: #bold.
			3 to: values size by: 3 do: [ :i | 
				self region: (values at: i) color: #green emphasis: #italic	
			]
		]
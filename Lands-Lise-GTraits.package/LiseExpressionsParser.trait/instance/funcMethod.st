accessing
funcMethod

	^ super funcMethod ==> {  
			[:values | { values third . values fourth return }  ].
			[:values |  { values fourth . (
				{values fifth args} asOrderedCollection 
					addAll: (values copyFrom: 7 to: values size - 1); 
					yourself
				) block return }  
		]
	}
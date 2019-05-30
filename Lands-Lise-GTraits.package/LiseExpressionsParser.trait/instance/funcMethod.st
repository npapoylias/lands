accessing
funcMethod

	^ super funcMethod ==> {  
			[:values | { values third . values fourth return }  ].
			[:values | { values fourth . {values fifth args. values seventh} block return} ]
	}
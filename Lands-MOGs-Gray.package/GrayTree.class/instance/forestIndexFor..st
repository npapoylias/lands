accessing
forestIndexFor: aNode

	^ forestIndexPerNode 
		at: aNode 
		ifAbsent: [ forestIndexPerNode at: aNode put: 1 ]

	
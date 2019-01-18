recursive-ordering-api
lastSeenAt: aName push: aState
	^ self lastSeenIndex
		ifNotNil: [ :top | 
			(top at: aName ifAbsentPut: [ GrayStack new ])
				push: aState index @ aState to ]
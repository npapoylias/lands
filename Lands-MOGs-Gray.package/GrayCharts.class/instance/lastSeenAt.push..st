recursive-ordering-api
lastSeenAt: aName push: aState

	^ (self lastSeenIndex at: aName ifAbsentPut: [ GrayStack new ]) push: aState index @ aState to
recursive-ordering-api
lastSeenAt: aName push: aState

	^ (self lastSeenIndex at: aName ifAbsentPut: [ Stack new ]) push: aState index @ aState to
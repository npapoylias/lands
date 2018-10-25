recursive-ordering-api
lastSeenAt: aName

	^ self lastSeenIndex at: aName ifAbsentPut: [ Stack new ]
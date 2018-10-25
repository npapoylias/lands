recursive-ordering-api
lastSeenAt: aName

	^ self lastSeenIndex at: aName ifAbsentPut: [ Stack new ] "return index not position"
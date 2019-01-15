adding
"protocol: #accessing"

addFirst: newObject
	
	|newArray newSize|
	newSize := totalSize + 1.
	newArray := Array new: newSize.
	newArray replaceFrom: 2 to: newSize with: array startingAt: 1.
	newArray at: 1 put: newObject.
	totalSize := newSize.
	currentSize := currentSize + 1.
	array := newArray.
	^ newObject
enumerating
removeLast
	|ret|
	ret := array at: currentSize. 
	array at: currentSize put: nil.
	currentSize := currentSize - 1.
	^ ret
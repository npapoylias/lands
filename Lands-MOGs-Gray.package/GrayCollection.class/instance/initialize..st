initialization
initialize: s

	currentSize := 0. 
	totalSize := s == 0 ifTrue: [5] ifFalse: [s]. "can grow"
	array := Array new: totalSize.
	
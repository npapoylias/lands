*Gray
temps
	
	^ (self select: [:s | s isToken not] thenCollect: [ :s |s var ]) asArray. "symbols, or vars already"
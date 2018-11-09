*Gray
asValue

	|senderCtx receiver|
	
	senderCtx := thisContext sender sender.
	receiver := senderCtx receiver.
	^ Smalltalk compiler evaluate: self 
		in: senderCtx to: receiver
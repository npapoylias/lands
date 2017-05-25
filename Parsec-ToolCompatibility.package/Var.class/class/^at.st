composition
@ aSymbolOrString

	|senderCtx receiver|
	
	aSymbolOrString isString "true for symbol as well"
		ifFalse: [ ^ aSymbolOrString ]. "when you just want to pass a literal,
		or a pre-computed object" "see tests"
	
	senderCtx := thisContext sender sender.
	receiver := senderCtx receiver.
	
	"Transcript show: senderCtx; cr; show: receiver; cr."
	
	
	^ Smalltalk compiler evaluate: aSymbolOrString 
		in: senderCtx to: receiver
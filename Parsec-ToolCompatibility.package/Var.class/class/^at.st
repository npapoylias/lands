composition
@ aSymbolOrString

	"see also asValue for strings and asValues for collections"

	|senderCtx receiver|
	
	senderCtx := thisContext sender sender.
	receiver := senderCtx receiver.
	^ Smalltalk compiler evaluate: aSymbolOrString 
		in: senderCtx to: receiver
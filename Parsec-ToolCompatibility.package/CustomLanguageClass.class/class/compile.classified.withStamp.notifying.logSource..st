compiling
compile: text classified: cat withStamp: changeStamp notifying: requestor logSource: logSource
	
	|transformedCode methodBody method|
		
	transformedCode := self transformCode: text.
	methodBody := transformedCode value.
	transformedCode := transformedCode key.
	
	method := super
		compile:  transformedCode
		classified: category
		withStamp: changeStamp
		notifying: requestor
		logSource: logSource.
		
	self grammar ifNil: [ ^ method ]. "Only for subclasses that define a custom grammar ;)"
		
	(self>>method) swapPlaceHolderReferenceFor: (self grammar new parse: methodBody) results first.
	
	"edit ast nodes"
	
	^ method.
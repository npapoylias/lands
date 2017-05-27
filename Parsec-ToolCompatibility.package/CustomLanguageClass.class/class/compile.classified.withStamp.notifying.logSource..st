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
	
	"will not cause problems if ref is not found"
	(self>>method) swapPlaceHolderReferenceFor: (self grammar new parse: methodBody) results first.
	
	self grammar ifNil: [ ^ method ]. "Only for subclasses that define a custom grammar ;)"
			
	"edit ast nodes"
	
	^ method.
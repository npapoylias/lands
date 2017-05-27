compiling
recompile: selector from: oldClass
	"Compile the method associated with selector in the receiver's method dictionary."

	| method newMethod transformedCode methodBody|
	method := oldClass compiledMethodAt: selector.
		
	transformedCode := self transformCode: (oldClass sourceCodeAt: selector).
	methodBody := transformedCode value.
	transformedCode := transformedCode key.
	
	newMethod := self compiler
				source: transformedCode;
				class: self;
				failBlock: [^ self];
				compiledMethodTrailer: method trailer;
				compile.   "Assume OK after proceed from SyntaxError"
	selector == newMethod selector ifFalse: [self error: 'selector changed!'].
	
	self grammar ifNil: [ ^ method ]. "Only for subclasses that define a custom grammar ;)"

	
	(self>>selector) swapPlaceHolderReferenceFor: (self grammar new parse: methodBody) results first.	
	
	
	self basicAddSelector: selector withMethod: newMethod.
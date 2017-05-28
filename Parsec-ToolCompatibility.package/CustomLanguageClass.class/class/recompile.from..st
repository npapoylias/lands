compiling
recompile: selector from: oldClass
	"Depends on loading order, recheck with baseline vs package loading (pre-post also
	can solve similar problems).
	Compile the method associated with selector in the receiver's method dictionary."

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

	self basicAddSelector: selector withMethod: newMethod.
	
	self grammar ifNil: [ ^ newMethod ]. "Only for subclasses that define a custom grammar ;)"

	
	"newMethod swapPlaceHolderReferenceFor: (self grammar new parse: methodBody) results first."		
	"will not cause problems if ref is not found"
	newMethod swapPlaceHolderReferenceFor: (self grammar new parse: methodBody) results first.
				
	"edit ast nodes"
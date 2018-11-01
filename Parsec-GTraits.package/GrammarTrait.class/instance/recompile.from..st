compiler
recompile: selector from: oldClass
	"Depends on loading order, recheck with baseline vs package loading (pre-post also
	can solve similar problems).
	Compile the method associated with selector in the receiver's method dictionary."

	| method newMethod transformedCode methodBody logSource|
	method := oldClass compiledMethodAt: selector.
	logSource := (oldClass sourceCodeAt: selector).
	transformedCode := self transformCode: logSource.
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
	"newMethod ast body: (RBLiteralValueNode value: nil start: logSource size - methodBody size stop: logSource size)."
				
	"edit ast nodes"
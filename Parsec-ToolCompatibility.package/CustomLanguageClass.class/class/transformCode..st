compiling
transformCode: code

	|stream selector methodCode transformedCode|

	self grammar ifNil: [ ^ code -> code]. "Only for subclasses that define a custom grammar ;)"

	stream := code readStream.
	self methodSignatureRegExpr matchesStreamPrefix: stream.
	selector := stream contents atAll: (1 to: stream position).
	methodCode := stream upToEnd.
	"just for testing, normally here either give the result or the compiled actions"
	"transformedCode := selector , 
		'^  (' , self grammar name , ' new 
						parse: ''' ,  (self quoteCode: methodCode) , ''') results first value. '".
	transformedCode := selector , '^  PlaceHolderReference value '.
	"Transcript show: transformedCode; cr."
	^ transformedCode -> methodCode
	
	
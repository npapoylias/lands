compiler
transformCode: code

	|stream selector methodCode transformedCode placeHolderMsg|

	self grammar ifNil: [ ^ code -> code]. "Only for subclasses that define a custom grammar ;)"

	stream := code readStream.
	self methodSignatureRegExpr matchesStreamPrefix: stream.
	selector := stream contents atAll: (1 to: stream position).
	methodCode := stream upToEnd.
	"just for testing, normally here either give the result or the compiled actions"
	"transformedCode := selector , 
		'^  (' , self grammar name , ' new 
						parse: ''' ,  (self quoteCode: methodCode) , ''') results first value. '".
	placeHolderMsg := '^ PlaceHolderReference value'.
	
	"placeHolderMsg := self balance: placeHolderMsg with: methodCode.
	methodCode := self balance: methodCode with: placeHolderMsg."
	
	transformedCode := selector , placeHolderMsg.
	"Transcript show: transformedCode; cr."
	^ transformedCode -> methodCode
	
	
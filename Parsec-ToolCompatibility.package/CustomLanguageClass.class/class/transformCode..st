compiling
transformCode: code

	|stream selector methodCode transformedCode|

	self grammar ifNil: [ ^ code ]. "Only for subclasses that define a custom grammar ;)"

	stream := code readStream.
	'[a-zA-Z0-9]+' asParsecRegex asDFA matchesStreamPrefix: stream.
	selector := stream contents atAll: (1 to: stream position).
	methodCode := stream upToEnd.
	"just for testing, normally here either give the result or the compiled actions"
	transformedCode := selector , 
		'^  (' , self grammar name , ' new 
						parse: ''' ,  (self quoteCode: methodCode) , ''') results first. '.
	"Transcript show: transformedCode; cr."
	^ transformedCode
	
	
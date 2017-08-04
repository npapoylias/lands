parsing
highlightSyntaxOn: aText 

	| stream selector methodCode |
	stream := aText string readStream.
	'[a-zA-Z0-9]+' asParsecRegex asDFA matchesStreamPrefix: stream.
	selector := stream contents atAll: (1 to: stream position).
	methodOffset := stream position.
	methodCode := stream upToEnd. 
	input := aText. "will be used in syntax highlighting actions"
	input addAttribute: (TextColor color: Color lightBlue) from: 1  to: methodOffset.
	[(self parse: methodCode) results first value] on: Error do: [:e | "Transcript show: e; show: e signalerContext sender inspect"]. "to actually evaluate actions"
	"aText makeAllColor: Color green. just to test for now"
	^ aText
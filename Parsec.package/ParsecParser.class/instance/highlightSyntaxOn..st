Parsec-ToolCompatibility
highlightSyntaxOn: aText
	| stream selector methodCode |
	stream := aText string readStream.
	self class methodSignatureRegExpr matchesStreamPrefix: stream.
	selector := stream contents atAll: (1 to: stream position).
	methodOffset := stream position.
	methodCode := stream upToEnd.
	input := aText.	"will be used in syntax highlighting actions"
	input
		addAttribute: (TextColor color: Color lightBlue)
		from: 1
		to: methodOffset.
	self parse: methodCode.
	"aText makeAllColor: Color green. just to test for now"
	^ aText
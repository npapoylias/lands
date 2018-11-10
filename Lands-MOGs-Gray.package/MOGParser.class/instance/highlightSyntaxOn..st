parsing
highlightSyntaxOn: aText 

	| stream methodCode |
	stream := aText string readStream. 
	methodOffset := 0.
	methodCode := stream upToEnd. 
	input := aText. "will be used in syntax highlighting actions"
	"["(self parse: methodCode) results first value."] on: Error do: [:e |" "Transcript show: e; show: e signalerContext sender inspect]." "to actually evaluate actions"
	"aText makeAllColor: Color green. just to test for now"
	^ aText
parsing
highlightSyntaxOn: aText 

	| stream methodCode |
	stream := aText string readStream. 
	methodOffset := 0.
	methodCode := stream upToEnd. 
	input := aText. "will be used in syntax highlighting actions"
	"[""] on: Error do: [:e |" "Transcript show: e; show: e signalerContext sender inspect]." "to actually evaluate actions"
	"aText makeAllColor: Color green. just to test for now"
	(self parse: methodCode timeout: 100) results first value.
	^ aText
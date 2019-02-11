lands-extentions
evaluate: aStream andDo: aBlock
	"Treat the current selection as an expression; evaluate it and invoke aBlock with the result."
	| result rcvr ctxt |
	(self editor model respondsTo: #doItReceiver) 
		ifTrue: [ rcvr := self editor model doItReceiver.
				ctxt := self editor model doItContext]
		ifFalse: [ rcvr := ctxt := nil].
	compiler :=  rcvr class compiler
			source: aStream;
			context: ctxt;
			receiver: rcvr;
			requestor: self editor morph  "don't set it to self.. The receiver can be destroyed as a result of evaluateSelection";
			failBlock:  [self editor morph flash. ^ nil].
	compiler compilationContext parserClass: PharoWorkspaceParser.
	result :=	 compiler evaluate.		
			
	^ aBlock value: result
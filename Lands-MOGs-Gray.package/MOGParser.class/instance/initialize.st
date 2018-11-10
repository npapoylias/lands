initialization
initialize

	super initialize.
	
	self class allInstVarNames 
			select: [ :iv | (MOGParser instVarNames includes: iv) not ] 
			thenDo: [ :iv | self instVarNamed: iv put: iv ]. "ivs as symbols"
	
	"if we put direct references inside rules it should be done here and then we just
	re-initialize"
	
	grammar := MOGrammar 
		new named: self class name; 
		with: ( (self class allSelectorsBelow: MOGParser) 
						select: [ :sel | sel isUnary ] 
						thenCollect: [ :name | self perform: name]).
initialization
initialize

	super initialize.
	
	self class allInstVarNames 
			select: [ :iv | (GrayParser instVarNames includes: iv) not ] 
			thenDo: [ :iv | self instVarNamed: iv put: iv ]. "ivs as symbols"
	
	"if we put direct references inside rules it should be done here and then we just
	re-initialize"
	
	grammar := GrayGrammar 
		new named: self class name; 
		with: ( (self class allSelectorsBelow: GrayParser) 
						select: [ :sel | sel isUnary ] 
						thenCollect: [ :name | self perform: name]).
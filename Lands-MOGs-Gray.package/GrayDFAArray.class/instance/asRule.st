instance creation
asRule

	 ^ (GrayTerminalSubRule new name: ('t' , regExpr hash asString) asSymbol) , self
instance creation
asRule

	 ^ (ParsecTerminalSubRule new name: ('t' , regExpr hash asString) asSymbol) , self
ops
not
	|tName|
	tName := ('tn' , self hash asString) asSymbol.
	^  (tName --|>  name) not. "returns rule"
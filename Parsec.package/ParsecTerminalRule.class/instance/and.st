ops
and
	|tName|
	tName := ('ta' , self hash asString) asSymbol.
	^  (tName --|>  name) and. "returns rule"
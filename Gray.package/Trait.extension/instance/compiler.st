*Gray
compiler

	|compiler|

	compiler := super compiler.
	compiler compilationContext parserClass: self parserClass.
	^ compiler
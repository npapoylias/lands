*Gray
compiler
	"Answer a compiler appropriate for source methods of this class."
	|compiler|
	compiler := self compilerClass new
		environment: self environment;
		class: self.
	compiler compilationContext parserClass: self parserClass.
	^ compiler
accessing
asCompiler
	"Answer a compiler using this class as parser"
	|compiler|
	compiler := self class compilerClass new
		environment: self class environment;
		class: self class.
	compiler compilationContext parserClass: self.
	^ compiler
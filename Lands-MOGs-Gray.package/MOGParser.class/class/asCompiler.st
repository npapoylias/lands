accessing
asCompiler
	"Answer a compiler using this class as parser"
	|compiler|
	compiler := self compilerClass new
		environment: self environment;
		class: self.
	compiler compilationContext parserClass: self.
	^ compiler
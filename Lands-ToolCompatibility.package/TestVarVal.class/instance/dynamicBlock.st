as yet unclassified
dynamicBlock

	"if you use proxies here you can write: Var x at: Var y put: 3"

	^ [ Var @ #x perform: #at:put: withArguments: { #y . 3 } asValues. Var @ #x ]
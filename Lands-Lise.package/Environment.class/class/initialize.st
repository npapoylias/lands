initialization
initialize

	|params args arithmetic operands misc|
	
	super initialize.

	arithmetic := self globalArithmetic.
	operands := self globalOperands.
	misc := self globalMisc.
	params := OrderedCollection new.
	args := OrderedCollection new.
	params
		addAll: arithmetic key;
		addAll: operands key;
		addAll: misc key.
	args
		addAll: arithmetic value;
		addAll: operands value;
		addAll: misc value.
	^ global := self param: params args: args outer: nil
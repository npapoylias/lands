compiling
initialize

	self isAbstract not ifTrue: [
		super initialize.
		self recompile.
		default := self new.
	]
	
	
	
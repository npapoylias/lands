tests
testModuleRun

	self assert: (UsingLisePharoParser run: {100}).
	self assert: (LiseTestModule run: { 100 }).
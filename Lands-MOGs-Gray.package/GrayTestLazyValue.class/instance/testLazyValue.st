tests
testLazyValue

	| f r1 r2 r3 r4 |
	f := [ :x | x * 2 ]. 

	r1 := f value: 1.
	r2 := f lazyValue: 1.
	self assert: r2 value = r1.

	r3 := f value: r1.
	r4 := f lazyValue: r2. "r2 = r1, but this is nested lazyValue"
	self assert: r4 value = r3
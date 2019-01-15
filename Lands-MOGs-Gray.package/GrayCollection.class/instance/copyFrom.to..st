copying
copyFrom: start to: finish
	|ret|
	ret := self class basicNew initialize: finish - start + 1.
	start to: finish do: [ :i | ret add: (self at: i)  ].
	^ ret
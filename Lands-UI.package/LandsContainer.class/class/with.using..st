instance creation
with: widgets using: layoutClass

	| inst |
	inst := self basicNew.
	inst with: widgets using: layoutClass.
	inst initialize.
	^inst
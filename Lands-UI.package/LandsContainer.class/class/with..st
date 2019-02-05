instance creation
with: widgets

	| inst |
	inst := self basicNew.
	inst with: widgets.
	inst initialize.
	^inst
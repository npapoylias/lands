*Lands-MOGs-Gray
recompileRecursivelyWithTraits

	self recompile. self traits do: [ :t | t recompileRecursivelyWithTraits ]
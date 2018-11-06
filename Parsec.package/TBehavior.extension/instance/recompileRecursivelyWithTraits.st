*Parsec
recompileRecursivelyWithTraits

	self recompile. self traits do: [ :t | t recompileRecursivelyWithTraits ]
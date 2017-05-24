*Parsec
lazyValue: anArgument

	^ [ self value: anArgument value ] "value inside the block is polymorphic, can be an object
	returning self or another block (nested lazyValues) that will be chained evaluated"
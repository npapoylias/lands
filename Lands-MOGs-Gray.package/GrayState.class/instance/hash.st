comparing
hash

	^ (((((rule hash bitXor: rightHandIndex hash)
		bitXor: dotPosition hash) 
		bitXor: from hash)
		bitXor: to hash)
		bitXor: fromTerminal hash)
		bitXor: toTerminal hash
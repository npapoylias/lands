accessing
removeLiseSystemGlobals

	self globals keys do: [ :k | Smalltalk globals removeKey: k ]
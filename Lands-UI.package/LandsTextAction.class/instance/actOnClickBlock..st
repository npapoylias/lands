accessing
actOnClickBlock: aBlock
	actionSerialization := aBlock asString. "recreate after serialization, assumes no capturing -- 
	which is the case since the evnt context such as the editor is passed as arg"
	actOnClickBlock := aBlock
filtering
followFor: aSymbol

	^ (self grammar at: aSymbol) follow deepFlatten asSet. "overriden in e and terminals"
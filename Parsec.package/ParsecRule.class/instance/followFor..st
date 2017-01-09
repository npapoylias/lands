filtering
followFor: aSymbol

	^ (self grammar at: aSymbol) follow. "overriden in e and terminals"
filtering
flattenFirstsFor: aSymbol

	^ (self grammar at: aSymbol) flattenFirsts. "overriden in e and terminals"
*Lands-MOGs-Gray
lit

	^ RBLiteralArrayNode
			startPosition: 0
			contents: (self asArray collect: [ :i | i lit ])
			stopPosition: 0
			isByteArray: true
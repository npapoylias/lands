*Lands-MOGs-Gray
lit

	^ RBLiteralArrayNode
			startPosition: 0
			contents: (self collect: [ :i | i lit ])
			stopPosition: 0
			isByteArray: false
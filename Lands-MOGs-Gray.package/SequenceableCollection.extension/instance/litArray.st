*Lands-MOGs-Gray
litArray "Asl method"

	^ RBLiteralArrayNode
		startPosition: self first start
		contents: self second
		stopPosition: self last start
		isByteArray: false
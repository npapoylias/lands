asl
byte

	^ RBLiteralArrayNode
			startPosition: self start
			contents: self string asNumber
			stopPosition: self stop
			isByteArray: true
	
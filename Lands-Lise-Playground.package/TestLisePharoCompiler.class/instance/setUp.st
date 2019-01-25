tests
setUp

	{ #twice . #compose . #repeat . #fact . #combine . #zip . #'riff-shuffle' } do: [ :key | Smalltalk globals removeKey: key ifAbsent: [  ] ]
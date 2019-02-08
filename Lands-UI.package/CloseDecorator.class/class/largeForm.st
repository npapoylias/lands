accessing
largeForm

	^ largeForm ifNil: [
		largeForm := 
			((FileSystem  workingDirectory / 'icons' / #close asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: 32@32
		].

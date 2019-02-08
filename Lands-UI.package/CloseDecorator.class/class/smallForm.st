accessing
smallForm

	^ smallForm ifNil: [
		smallForm := 
			((FileSystem  workingDirectory / 'icons' / #close asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: 16@16
		].
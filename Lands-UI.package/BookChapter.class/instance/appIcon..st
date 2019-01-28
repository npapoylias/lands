accessing
appIcon: aSymbol

	^ ((FileSystem  workingDirectory / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: 36 @ 36
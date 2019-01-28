accessing
appIcon: aSymbol size: aPoint

	^ ((FileSystem  workingDirectory / aSymbol asString , 'png') readStreamDo: [ :s | ImageReadWriter formFromStream:  s ]) scaledToSize: aPoint
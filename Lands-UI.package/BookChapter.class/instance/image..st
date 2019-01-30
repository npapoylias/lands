accessing
image: aFile
	|m|
	m := (ImageModel new image: (self openImage: aFile)) switchAutoscale.
	m whenBuiltDo: [ m color: Color black ].
	 "scaledToSize: self defaultImageSize "
	^ m
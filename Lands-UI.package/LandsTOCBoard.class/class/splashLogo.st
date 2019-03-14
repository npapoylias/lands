specs
splashLogo
	| logoMorph logoPath |
	logoPath := SmalltalkImage current lastImagePath asFileReference
		parent / 'logo-lands.png'.
	logoMorph := (ImageReadWriter formFromStream: logoPath readStream)
		asMorph.
	"Display fullscreenMode: true. Display newDepth: Display depth."
	logoMorph openCenteredInWorld.
	[ (Delay forSeconds: 6) wait.
	logoMorph delete ] fork
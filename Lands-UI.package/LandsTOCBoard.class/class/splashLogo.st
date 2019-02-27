specs
splashLogo
	| logoMorph logoPath |
	logoPath := SmalltalkImage current lastImagePath asFileReference
		parent / 'logo-lands.png'.
	logoMorph := (ImageReadWriter formFromStream: logoPath readStream)
		asMorph.
	logoMorph openCenteredInWorld.
	"[ (Delay forSeconds: 4) wait.
	logoMorph delete ] fork"
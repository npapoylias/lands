accessing
playgroundWithFile: aFileName titled: aTitle
	"|pg|
	pg := GlamourPresentationModel new.
	pg 
		presentationClass: GTPlayground 
		startOn: (GTPlayPage new saveContent: aString; title: aTitle).
	^ pg"
	^ (LandsWorkspace new 
			buildTextMorph;
			openLandsDoc: aFileName;
			bringThePane) asSpec
	
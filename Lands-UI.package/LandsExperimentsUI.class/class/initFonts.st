specs
initFonts
	|done|
	done := Set new.
	FreeTypeFontProvider current 
		updateFromDirectory: FileSystem workingDirectory / 'fonts' done: done;
		updateAvailableFontFamilies 
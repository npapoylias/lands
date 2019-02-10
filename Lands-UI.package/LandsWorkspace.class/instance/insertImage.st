lands-extentions
insertImage

	| file |
	file := UIManager default theme
		chooseFileNameIn: UIManager default
		title: 'Insert Image'
		extensions: {'png' . 'jpeg' . 'jpg'}
		path: FileSystem workingDirectory
		preview: nil.
	self embed: (self image: file) buildWithSpec
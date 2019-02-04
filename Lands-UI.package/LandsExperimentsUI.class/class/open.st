specs
open
	"self open"
	|instance|
	"Author useAuthor: 'Lands-UI' during: [ LandsTOC generateBookHierarchy ]."
	self initFonts.
	instance := self new.
	(instance openWithSpec; window) maximize.
	"self splashLogo."
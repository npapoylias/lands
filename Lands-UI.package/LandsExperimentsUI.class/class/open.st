specs
open
	"self open"
	|instance|
	"Author useAuthor: 'Lands-UI' during: [ LandsTOC generateBookHierarchy ]."
	instance := self new.
	(instance openWithSpec; window) maximize.
	"self splashLogo."
specs
open
	"self open"
	|instance window|
	"Author useAuthor: 'Lands-UI' during: [ LandsTOC generateBookHierarchy ]."
	self initFonts.
	instance := self new.
	window := instance openWithSpec; window.
	window extent: 1280@1024.
	window maximize.
	instance window: window window value "SpecWindow"
	"self splashLogo."
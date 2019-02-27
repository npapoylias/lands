specs
openFullScreen
	"self openFullScreen"
		|instance window|
	"(self new openWithSpec; window) window value openFullscreen.
	self splashLogo."
	"Author useAuthor: 'Lands-UI' during: [ LandsTOC generateBookHierarchy ]."
	self initFonts.
	self clearIcons.
	instance := self new.
	window := instance openWithSpec; window. 
	window window value openFullscreen.
	instance window: window window value "SpecWindow"
	"self splashLogo."
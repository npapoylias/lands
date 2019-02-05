specs
openFullScreen
	"self openFullScreen"
		|instance window|
	"(self new openWithSpec; window) window value openFullscreen.
	self splashLogo."
	"Author useAuthor: 'Lands-UI' during: [ LandsTOC generateBookHierarchy ]."
	self initFonts.
	instance := self new.
	window := instance openWithSpec; window. 
	window value openFullScreen.
	instance window: window window value "SpecWindow"
	"self splashLogo."
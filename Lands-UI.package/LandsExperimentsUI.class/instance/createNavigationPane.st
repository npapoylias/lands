initialization
createNavigationPane

	toc := LandsTOC.
	navigationPane := toc asMorph asSpecAdapter.
	navigationPane widget model announcer: announcer.

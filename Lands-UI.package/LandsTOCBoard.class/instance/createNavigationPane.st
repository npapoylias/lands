initialization
createNavigationPane

	toc := LandsTOC new.
	navigationPane := toc asMorph asSpecAdapter.
	navigationPane widget model announcer: announcer.

accessing
boardWithAnnouncement: a
	| selectedTab newContainer model pager widget|
	selectedTab := self tabArea innerTabManager selectedTab.
	pager := self pagerAtTab: selectedTab.
	"selectedTab
		model:"
	pager numberOfPages > 1 
		ifTrue: [
			model :=	((self containersAtTab: selectedTab) 
				addFirst: (newContainer := {pager currentPageWidget asSpecAdapter"selectedTab spec instance widget morph asSpecAdapter".
				(self inspectorWith: a result)} ui: a layout)). 
			widget := newContainer buildWithSpec innerWidget. 
			self updatePagerAtTab: selectedTab with: widget. 
			selectedTab model: pager]
		ifFalse: [ 
			model :=	((self containersAtTab: selectedTab) 
				addFirst: (newContainer := {selectedTab spec instance widget morph asSpecAdapter.
				(self inspectorWith: a result)} ui: a layout)).
			selectedTab model: model
		]. 
	selectedTab spec instance widget refreshContent. 
	^ [ (Delay forMilliseconds: 100) wait.	"should return, before updating, refactor to style through spec"
	(self tabArea innerTabManager innerWidget allMorphs
		select: [ :m | m class = ProportionalSplitterMorph ])
		do: [ :m | m color: Color black ] ] fork
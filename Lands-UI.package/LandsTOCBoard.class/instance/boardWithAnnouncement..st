accessing
boardWithAnnouncement: a
	| selectedTab newContainer model pager|
	selectedTab := self tabArea innerTabManager selectedTab.
	"selectedTab
		model:"
	model :=	((self containersAtTab: selectedTab) 
				addFirst: (newContainer := {selectedTab spec instance widget morph asSpecAdapter.
				(self inspectorWith: a result)} ui: a layout)).
	self updatePagerAtTab: selectedTab with: newContainer buildWithSpec innerWidget.
	(pager := (self pagerAtTab: selectedTab)) numberOfPages > 1
		ifTrue: [ selectedTab model: pager ]
		ifFalse: [ selectedTab model: model ]. 
	selectedTab spec instance widget refreshContent. 
	^ [ (Delay forMilliseconds: 100) wait.	"should return, before updating, refactor to style through spec"
	(self tabArea innerTabManager innerWidget allMorphs
		select: [ :m | m class = ProportionalSplitterMorph ])
		do: [ :m | m color: Color black ] ] fork
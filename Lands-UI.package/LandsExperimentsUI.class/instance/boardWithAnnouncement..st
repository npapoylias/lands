accessing
boardWithAnnouncement: a
	| selectedTab |
	selectedTab := self tabArea innerTabManager selectedTab.
	selectedTab
		model:
			(containers addFirst: ({selectedTab spec instance widget morph asSpecAdapter.
			(self inspectorWith: a result)} ui: a layout)).
	selectedTab spec instance widget refreshContent.
	^ [ (Delay forMilliseconds: 100) wait.	"should return, before updating, refactor to style through spec"
	(self tabArea innerTabManager innerWidget allMorphs
		select: [ :m | m class = ProportionalSplitterMorph ])
		do: [ :m | m color: Color black ] ] fork
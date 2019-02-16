as yet unclassified
scrollWithAnnouncement: ann
	| selectedTab pager|
	selectedTab := self tabArea innerTabManager selectedTab.
	pager := self pagerAtTab: selectedTab.
	pager numberOfPages = 1 ifTrue: [ self updatePagerAtTab: selectedTab with: selectedTab spec instance widget morph ].
	pager	add: (self inspectorWith: ann result) buildWithSpec innerWidget.
	selectedTab model: pager.
	selectedTab spec instance widget refreshContent.
		
	
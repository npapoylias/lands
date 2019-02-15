as yet unclassified
scrollWithAnnouncement: ann
	| selectedTab pager|
	selectedTab := self tabArea innerTabManager selectedTab.
	(pager := (self pagerAtTab: selectedTab)) 
		add: (LandsContainer with: (self inspectorWith: ann result)) buildWithSpec innerWidget.
	selectedTab model: pager.
	selectedTab spec instance widget refreshContent.
		
	
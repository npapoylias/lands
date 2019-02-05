accessing
window: win

	myWindow := win.
	myWindow announcer subscribe: TabIt do: [ :a | |tab|
		tab := self newTab.
		tab label: (a result asString truncate: 12); closeable: true; icon: (self appIcon: #repl size: 28@28).
		tab model: (self inspectorWith: a result).
		tabArea innerTabManager addTab: tab 
	].
	myWindow announcer subscribe: ScrollIt do: [ :a |  
	|selectedTab container| selectedTab := self tabArea innerTabManager selectedTab.
		selectedTab model: (container := {
			selectedTab spec instance widget morph asSpecAdapter.
			self inspectorWith: a result.
		} ui).
		selectedTab spec instance widget refreshContent
	].
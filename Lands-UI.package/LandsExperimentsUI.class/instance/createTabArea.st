initialization
createTabArea
	|tab|
	tabArea := self newTabManager.
	tab := self newTab.
	tab model: (self playgroundWith: '3+4' titled: 'Example').
	tab 
		label: 'TabLabel';
		closeable: true;
		icon: (self appIcon: #structure size: 28@28).
	tabArea addTab: tab.
initialization
updateTabAreaWith: aTabManager
	tabArea ~= aTabManager
		ifTrue: [
			tabArea := aTabManager.
			self update
		]
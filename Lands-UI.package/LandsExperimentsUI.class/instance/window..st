accessing
window: win

	myWindow := win.
	myWindow announcer on: TabIt do: [ :a | Transcript show: a result; cr ].
	myWindow announcer on: ScrollIt do: [ :a | Transcript show: a result; cr ].
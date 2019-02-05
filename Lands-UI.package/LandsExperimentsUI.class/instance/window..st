accessing
window: win
	self halt.
	myWindow := win.
	myWindow announcer subscribe: TabIt do: [ :a | Transcript show: a result; cr ].
	myWindow announcer subscribe: ScrollIt do: [ :a | Transcript show: a result; cr ].
accessing
window: win
	myWindow := win.
	myWindow announcer subscribe: TabIt do: [ :a | self tabWithAnnouncement: a ].
	myWindow announcer subscribe: ScrollIt do: [ :a | self boardWithAnnouncement: a ].
	myWindow announcer subscribe: UpdateIt do: [ :a | self updateWithAnnouncement: a  ] 
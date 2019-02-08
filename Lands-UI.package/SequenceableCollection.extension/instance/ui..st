*Lands-UI
ui: layout
	"fluid container API assumes widgets or objects that understand ui"
	layout = #down
		ifTrue: [ ^ (LandsContainer with: self flatten using: SpecColumnLayout) ].
	layout = #right
		ifTrue: [ ^ (LandsContainer with: self flatten using: SpecRowLayout) ].
		
	self error: 'No such layout: ' , layout asString 
*Lands-UI
ui
	"fluid container API assumes value -> widgets or objects that understand ui"
	^ (LandsContainer with: self value flatten using: SpecRowLayout) 
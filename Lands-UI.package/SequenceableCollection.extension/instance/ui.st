*Lands-UI
ui
	"fluid container API assumes widgets or objects that understand ui"
	^ (LandsContainer with: self flatten using: SpecColumnLayout) 
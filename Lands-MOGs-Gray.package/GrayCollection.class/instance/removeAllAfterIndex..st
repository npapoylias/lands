accessing
removeAllAfterIndex: anIndex
	
	"anIndex to: currentSize do: [:i | array at: i put: nil]. ""we can skip and override"
	currentSize := anIndex

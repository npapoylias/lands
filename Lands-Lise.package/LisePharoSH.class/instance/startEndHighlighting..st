accessing
startEndHighlighting: values

	self region: values first emphasis: #bold.
	self region: values first color: #magenta.
	self region: values last emphasis: #bold.
	self region: values last color: #magenta.
	^ values	
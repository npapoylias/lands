accessing
startEndHighlighting: values

	self token: values first emphasis: #bold.
	self token: values first color: #red.
	self token: values last emphasis: #bold.
	self token: values last color: #red.
	^ values	
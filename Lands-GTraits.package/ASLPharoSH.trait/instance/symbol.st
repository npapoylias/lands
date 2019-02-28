accessing
symbol

	^ super symbol ==> [ :values | self region: values first color: #lightBrown emphasis: #bold. self region: values second color: #cyan emphasis: #italic]
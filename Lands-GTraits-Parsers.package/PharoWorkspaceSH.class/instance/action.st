accessing
action

	^ super action ==> [ :values | self region: values first color: Color yellow emphasis: #bold].
compiling
compile: text classified: cat withStamp: changeStamp notifying: requestor logSource: logSource
	
	^ super
		compile: (self transformCode: text)
		classified: category
		withStamp: changeStamp
		notifying: requestor
		logSource: logSource
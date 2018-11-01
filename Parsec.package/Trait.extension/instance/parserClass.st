*Parsec
parserClass
	|pcMethod|
	pcMethod := self classTrait methods 
		detect: [ :m | m selector = #parserClass ]
		ifNone: [ nil ].
	^ pcMethod 
		ifNil: [ self defaultParserClass ]
		ifNotNil: [ pcMethod valueWithReceiver: self arguments: #() ]
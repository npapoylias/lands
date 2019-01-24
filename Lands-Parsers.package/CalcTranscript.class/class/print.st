accessing
print

	^ printList inject: '' into: [ :total :next | total , next asString ]
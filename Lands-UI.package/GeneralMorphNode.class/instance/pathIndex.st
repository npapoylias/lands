accessing
pathIndex

	^ (self path collect: [ :n | n index ]) allButFirst "omit 0 of root"

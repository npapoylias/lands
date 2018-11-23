instance creation
restoreToCustomScreenSize
	|w|
	""
	w := (SystemWindow allInstances select: [ :win | win labelString = 'Lands: Theory and Applications of Multi-Ordered Grammars -- Experiments' ]) first.
	w restore maximize restore maximize. "This seems to do the trick"
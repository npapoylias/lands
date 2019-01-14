tests
testBench
	|t o times|
	t := self classToTest new.
	o := OrderedCollection new.
	times := 2000000.

	Transcript show:
		([1 to: times do: [:i | OrderedCollection new]] timeToRun /
		[1 to: times do: [:i |  self classToTest new ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: times do: [:i | o add: i ]] timeToRun /
		[1 to: times do: [:i | t add: i ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: (times) do: [:i | o at: i ]] timeToRun /
		[1 to: (times) do: [:i | t at: i ]] timeToRun) asFloat; cr.

	Transcript show:
		([1 to: times do: [:i | o at: i put: i ]] timeToRun /
		[1 to: times do: [:i | t at: i put: i ]] timeToRun) asFloat; cr.

	Transcript show: 
		([1 to: times do: [:i | o at: i ifAbsent: [  ] ]] timeToRun /
		[1 to: times do: [:i | t at: i ifAbsent: [  ] ]] timeToRun) asFloat; cr.
	
	Transcript show: 
		([1 to: times / 1000 do: [:i | o removeIndex: 1]] timeToRun /
		[1 to: times / 1000 do: [:i | t removeIndex: 1 ]] timeToRun) asFloat; cr.
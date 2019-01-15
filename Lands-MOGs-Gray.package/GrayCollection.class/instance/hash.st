accessing
hash
	| h |

	h := self class hash.
	1 to: self size do: [:i | h := (h + (self at: i) hash) hashMultiply].
	^h
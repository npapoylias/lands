accessing
number

	^ number --> '[0-9]+(\.[0-9]+)?' ==> [ :token | token tokenValue asNumber ]
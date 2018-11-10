accessing
firstFollowExample

	"add numbered plus ?"

	^ self new 
		named: #FFExample;
		with: {  
			#start --> #E.
			#E --> #T , #E_.
			#E_ --> '\+' , #T , #E_ | #e.
			#T --> #F , #T_.
			#T_ --> '\*' , #F , #T_ | #e.
			#F --> '\(' , #E , '\)' | '[a-zA-Z][a-zA-Z0-9]*'
		}.
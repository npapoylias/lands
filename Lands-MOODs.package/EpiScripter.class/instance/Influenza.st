as yet unclassified
Influenza
  
	EpiModel SEIRS {   
  		attr status[S , E , I , R]
  		params beta, lambda, gamma, mu, sigma, nu
  		where: S -- lambda --> E,
  	 		E -- sigma --> I,
  	 		I -- gamma --> R,
  	 		R -- nu --> S,
  	 		status -- mu --> Empty,
  	 		Empty -- mu --> S
	} 

	EpiModel Biological{
  		attr species[Human, Bird]
	}
	
	Map Indochina {
  		countries = MyanmarBurma , Cambodia , Laos , Thailand , Vietnam
  		borders = .............
	             . 0 0 0 1 0 .
	             . 0 0 0 0 1 .
	             . 1 0 0 0 0 .
	             . 0 0 1 0 0 .
	             .............
   }
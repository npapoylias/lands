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
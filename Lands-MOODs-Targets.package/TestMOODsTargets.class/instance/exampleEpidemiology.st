as yet unclassified
exampleEpidemiology

	"pick the most appropriate examples and show..fix syntax highlighting"

 EpiModel SEIRS
    attribute: #(status -> S E I R);
    parameters: #(beta lambda gamma mu sigma nu);
    transitions: #(
        S -- lambda --> E.
        E -- sigma --> I.
        I -- gamma --> R.
        R -- nu --> S.
        status -- mu --> Empty.
        Empty -- mu --> S.).

  EpiModel Biological
    attribute: #(species -> human bird).

  Map IndoChina
	for: #(country -> MyanmarBurma Cambodia Laos Thailand Vietnam);
	borders: #(
   		#(0 0 0 1 0)
      #(0 0 0 0 1)
      #(1 0 0 0 0)
      #(0 1 0 0 0)
      #(0 0 1 0 0)
   ).
	
  EpiModel Demographical
	 maps: 'IndoChina';
	 withTransitionRate: #(rho).
	    
  EpiModel SEIRSQ
    extends: 'SEIRS';
    parameters: #(delta epsilon);
    addStatus: #(Q);
    addTransition: #(I -- delta --> Q.);
    addTransition: #(Q -- epsilon --> R.);
    addTransition: #(Q -- mu --> Empty.).

 Composition Influenza6a
    model: 'SEIRSQ';
    model: 'Biological'.

 Composition Influenza6b
	extends: 'Influenza6a';
	 model: 'Demographical'.
	
 Scenario Influenza6Parameters
	on: 'Influenza6b';
   mu_species: #(0.000365 0.00137);
   beta_species_country: #(
			#(#(0 0.21) #(0 0.21) #(0 0.21) #(0 0.21) #(0 0.21))
			#(#(0 0.28) #(0 0.28) #(0 0.28) #(0 0.42) #(0 0.28))
	);
   gamma_species: #(0.25 0.233);
   sigma_species: #(0.5 0.67);
   nu: 0.00274;
   rho_species_Q: #(0.03 0.1 0);
   delta_species: #(0.068 0.055);
   epsilon_species: #(0.096 0.082);
	lambda: #(beta*(I_country/(N-Q_country)) sum);
	N: #(country_species).	


 Scenario Influenza6Population
   on: 'Influenza6b';
	populationSize: 27500;
   S_species_country: #(#(500 500 500 500 500) #(5000 5000 5000 4990 5000));
   I_species_country: #(#(0 0 0 0 0) #(0 0 0 10 0)).

 Simulation Influenza6Sim rungeKutta
    scenarios: #(Influenza6Parameters Influenza6Population);
    from: 0.0;
    to: 500;
    step: 1.

 Visualization Influenza6AbstractViz map
    for: 'Influenza6Sim'.

 Visualization Influenza6Viz
	extends: 'Influenza6AbstractViz';
   data: #(country I_bird_country peakOfEpidemic);
	exportToPng.
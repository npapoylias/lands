as yet unclassified
Geranium

	StatScenario Geranium {
   		coordinates = S 46.16352961038194, 
		              W -1.1302614212036133, 
		              N 46.166851083597415,
                    E -1.1267745494842527
   		sum(buildings) = 46
   		sum(residences) = 186 
   		stats(residences) = 6.52% SmallRenovatedHlmBlock, 
        	                 8.965% LargeRenovatedHlmBlock,
                          4.34% SmallNewHlmBlock,
                          2.17% LargeNewHlmBlock,
                          23.91% HLMHousing,
                          19.56% SocialHousing,
                          34.54% PrivateHousing
    	climate = LaRochelleAverage
    	trends = FrenchConsumptionTrends
    	weights = EmpiricalHypothesis
    	time(simulation) = 1 year 
	}
	
	UrbanProfile HLMNew {
		category = Dpe A
    	surface = N(m=73.0,s=10.0) E [48,98]
    	occupants = 42.10% SingleAdult,
	       21.06% Couple,
	       36.84% Family
    	children = U(1,3)
    	income = N(m=25000,s=10000) E [13800, 36000] 
    	awareness = 31.58% ConsumptionAware, 
                68.42% ConsumptionUnAware
    	ownership = 90%
	}
 (C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 (SP) - NETWORK ANALYSIS, INC.
        BCD 3THERMAL LPCS                                                        
 *** NOTE: DYNAMIC STORAGE BUCKET = 100000000, INFO ONLY
        BCD 9 AL PLP Proposal Study (For Jim Berry, 07/17/08)                    
        BCD 9 Modified by A.Carl: (From: SAMTAV Task Order 9  06/24/03)          
        BCD 9                                                                    
        BCD 9 Inner face sheet: 0.078" graphite epoxy                            
        BCD 9 Core: 1" vacuum purged, perforated Aramid honeycomb                
        BCD 9 Outer face sheet: 0.078" graphite epoxy                            
        BCD 9                                                                    
        BCD 9                                                                    
        BCD 9    units used in model  - BTU in SEC LBM LBF DEG F                 
        END                                                                      
        BCD 3NODE DATA                                                           
  
 C  Boundary Node for convection to the surrounding environment.                 
 Cc         -1,   80.0, 1.0                                                      
            -1,  -45.0, 1.0	$ T_adiabatic_wall @ M = 0.6 & Alt = 42 kft          
  
 C  Boundary Node for radiation to the background Sky.                           
 Cc         -2,   80.0, 1.0                                                      
 Cc         -2,   48.0,   0.     $ T_sky SINK NODE                               
        SIT -2,0.0,A7,0.0                                                        
  
 C  Boundary Node for the inner surface of the tank. A5 = LOX, A6 = CH4          
 Cc           -3, -433.0, 1.0                                                    
 Cc       SIT -3, 0.0, A5, 0.0                                                   
 Cc         SIT -3, 0.0, A5                                                      
 Cc       SIT -3,0.0,A5,0.0                                                      
        SIT -3,0.0,A6,0.0                                                        
  
 C  Boundary Node for radiation to the background Earth.                         
 Cc         -4,   80.0, 1.0                                                      
 Cc         -4,   80.0,   0.     $ T_earth SINK NODE                             
        SIT -4,0.0,A8,0.0                                                        
  
 C *** Primary Stack ***                                                         
  
 CcC  Outer Surface Node                                                         
 Cc           1000, 59.0, -1.0                                                   
 Cc                                                                              
 CcC  Outer Face Sheet - Haynes 230  Total thickness 0.007"                      
 CcC                                 vol = (0.007*19.00*19.00) in^3              
 CcC                                 rho = 0.324 lbm/in^3                        
 CcC                      Cp   lbm (vol * rho)                                   
 CcC      SIV 1001, 59.0, A11, 0.819                                             
 CcC                                                                             
 CcC  Outer Face Sheet - Inconel 617  Total thickness 0.250"                     
 CcC                                 vol = (0.250*19.00*19.00) in^3              
 CcC                                 rho = 0.302 lbm/in^3                        
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 1001, 59.0, A111, 27.26                                            
 Cc                                                                              
 CcC  Surface Node between the Outer Face Sheet and the Honeycomb Cells <- OLD   
 CcC  Surface Node between the Outer Face Sheet and the Air Gap                  
 Cc           1100, 59.0, -1.0                                                   
 Cc                                                                              
 CcC  Honeycomb Cell Walls - Haynes 214  Total thickness 0.50"                   
 CcC                                 vol = (2.382) in^3                          
 CcC                                 rho = 0.291 lbm/in^3                        
 CcC                      Cp   lbm (vol * rho)                                   
 CcC       SIV 1101, 59.0, A21, 0.677                                            
 CcC                                                                             
 CcC  Surface Node between the Inner Face Sheet and the Honeycomb Cells          
 CcC           1200, 59.0, -1.0                                                  
 CcC                                                                             
 CcC  Inner Face Sheet - Haynes 230  Total thickness 0.007"                      
 CcC                                 vol = (0.007*18.128*18.128) in^3            
 CcC                                       Note: Reduce by hole area 4 * 0.7854  
 CcC                                 rho = 0.324 lbm/in^3                        
 CcC                      Cp   lbm (vol * rho)                                   
 CcC       SIV 1201, 59.0, A11, 0.738                                            
 CcC                                                                             
 CcC  Surface Node between the Inner Face Sheet and the Saffil <- OLD            
 CcC  Surface Node between the Air Gap and the Saffil                            
 Cc           2000, 59.0, -1.0                                                   
 Cc                                                                              
 CcC  Saffil - Total thickness 2.20"                                             
 CcC                                 vol = (2.00*19.00*19.00) in^3               
 CcC                                       Note: Reduce by hole area 4 * 0.7854  
 CcC                                 rho = 6.00 lbm/ft^3 = 3.472E-3 lbm/in^3     
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 2001, 59.0, A31, 2.757                                             
 Cc                                                                              
 CcC  Surface Node between the Saffil and the air pocket <- OLD                  
 CcC  Surface Node between the Saffil and the Foam                               
 Cc           3000, 59.0, -1.0                                                   
 Cc                                                                              
 CcC  Surface Node between the air pocket and the foam                           
 CcC           4000, 59.0, -1.0                                                  
 CcC                                                                             
 CcC  Foam - Total thickness 1.00"                                               
 CcC                                 vol = (1.00*19.00*19.00) in^3               
 CcC                                 rho = 3.75 lbm/ft^3 = 2.170E-3 lbm/in^3     
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 4001, 59.0, A41, 0.7834                                            
  
 C  Surface Node between the Foam and the Tank Wall                              
            5000, 59.0, -1.0                                                     
  
 CcC  Tank Wall Outer Face Sheet - IM7/977-2  Total thickness 0.0624"            
 CcC                                 vol = (0.0624*19.00*19.00) in^3             
 CcC                                 rho = 98.4 lbm/ft^3 = 5.694E-2 lbm/in^3     
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 5001, 59.0, A51, 1.283                                             
 C  Tank Wall Outer Face Sheet - IM7/977-2  Total thickness 0.078"               
 C                                 vol = (0.078*19.00*19.00) in^3                
 C                                 rho = 98.4 lbm/ft^3 = 5.694E-2 lbm/in^3       
 C                      Cp   lbm (vol * rho)                                     
        SIV 5001, 59.0, A51, 1.603                                               
  
 C  Surface Node between the Tank Wall Outer Face Sheet and the Core Cells       
            5100, 59.0, -1.0                                                     
  
 CcC  Core Cell Walls - Korex Arimid Paper  Total thickness 1.50"                
 CcC                                 vol = (19.0*19.0*0.035*1.50) in^3           
 CcC                                 rho = 0.049 lbm/in^3                        
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 5101, 59.0, A81, 0.929                                             
 C  Core Cell Walls - Korex Arimid Paper  Total thickness 1.0"                   
 C                                 vol = (19.0*19.0*0.035*1.0) in^3              
 C                                 rho = 0.049 lbm/in^3                          
 C                      Cp   lbm (vol * rho)                                     
        SIV 5101, 59.0, A81, 0.619                                               
  
 C  Surface Node between the Inner Face Sheet and the Core Cells                 
            5200, 59.0, -1.0                                                     
  
 CcC  Tank Wall Inner Face Sheet - IM7/977-2  Total thickness 0.0624"            
 CcC                                 vol = (0.0624*19.0*19.0) in^3               
 CcC                                 rho = 98.4 lbm/ft^3 = 5.694E-2 lbm/in^3     
 CcC                      Cp   lbm (vol * rho)                                   
 Cc       SIV 5201, 59.0, A51, 1.283                                             
 C  Tank Wall Inner Face Sheet - IM7/977-2  Total thickness 0.078"               
 C                                 vol = (0.078*19.0*19.0) in^3                  
 C                                 rho = 98.4 lbm/ft^3 = 5.694E-2 lbm/in^3       
 C                      Cp   lbm (vol * rho)                                     
        SIV 5201, 59.0, A51, 1.603                                               
  
 C  Inner Surface Node                                                           
            6000, 59.0, -1.0                                                     
  
        END                                                                      

  NODAL ANALYSIS, DIFUS (CONSTANT=      0, VARIABLE=      3), ARITH=      4, BOUNDARY=    4, TOTAL=     11, NLC=      3

     RELATIVE NUMBERS                                           ACTUAL NUMBERS

       1 THRU     10 -     5001     5101     5201     5000     5100     5200     6000        1        2        3
      11 THRU     11 -        4
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-'2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3SOURCE DATA                                                         
 C                                                                               
 C      Heating load being placed on the surface.                                
 C      Note: The multiplying factor is the model area in square inchs.          
 Cc	A2 = 16 ft dia, A3 = 12 ft dia, A4 = 9 ft dia                                
 Cc       SIT 1000, A2, 361.0                                                    
 Cc       SIT 5000, A3, 361.0                                                    
        SIT 5000, A4, 361.0                                                      
  
 Cc	Solar load: Factor = 19" * 19" / 144 / 3600                                  
        SIT 5000, A9, 6.964E-4                                                   
  
  
        END                                                                      

  SOURCE ANALYSIS - CONSTANT IMPRESSED =      0, VARIABLE IMPRESSED =      2,  TOTAL =      2, NLQ=      2
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-'2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3CONDUCTOR DATA                                                      
  
 C *** Energy exchange with the surrounding environment. ***                     
 C                                                                               
 C   Assume there is natural convection from the outer surface until             
 C   the vehicle is 100 seconds into the ascent.  Resume convection              
 C   when the descent heat load goes to zero.                                    
 CcC   Assume 1 BTU/hr ft**2 = 1.929E-6 BTU/sec in**2                            
 C   Assume 20 BTU/hr ft**2 = 3.858E-5 BTU/sec in**2                             
 C   (Reset G for this conductor in Variables 1.)                                
 C                                x     z      h      Dum                        
 Cc       CAL      1,    1, 1000, 19.0, 19.0, 1.929E-6, 1.0                      
        CAL      1,    1, 5000, 19.0, 19.0, 3.858E-5, 1.0                        
  
 C   Radiation between the outer surface and viewable environment.               
 C   Sigma = 1.714E-9 BTU / ft^2 hr R^4 = 3.3063E-15 BTU / in^2 sec R^4          
 C                                                                               
 C    Factor = View Factor * Sigma * Area                                        
 C                   View Factor = 1.0                                           
 C                         Sigma = 3.3063E-15 BTU / in^2 sec R^4                 
 C                          Area = (19.0*19.0) = 361.0 in^2                      
 C    Factor = 1.0 * 3.3063E-15 * 361.0 = 1.1936E-12                             
 C                              Epsilon  Factor                                  
 Cc       SIV -90002, 1000,    2,     A15, 1.1936E-12                            
        SIV -90002, 5000,    2,     A15, 1.1936E-12                              
  
 Cc       SIV -90004, 5000,    4,     A15, 1.1936E-12                            
  
 CcC *** Primary Stack ***                                                       
 Cc                                                                              
 CcC   Conduction through the outer face sheet (Haynes 230) <- OLD               
 CcC   Conduction through the outer face sheet (Inconel 617)                     
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0) in^2                             
 CcC                         Path = (0.125) in                                   
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 CcC      SIV   1000, 1000, 1001, A12, 2.388 <- OLD                              
 Cc       SIV   1000, 1000, 1001, A112, 0.06685                                  
 CcC      SIV   1001, 1001, 1100, A12, 2.388 <- OLD                              
 Cc       SIV   1001, 1001, 1100, A112, 0.06685                                  
 Cc                                                                              
 CcC   Conduction through the honeycomb walls (Haynes 214)                       
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (4.656) in^2                                 
 CcC                         Path = (0.25) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 CcC       SIV   1100, 1100, 1101, A22, 4.311E-4                                 
 CcC       SIV   1101, 1101, 1200, A22, 4.311E-4                                 
 CcC                                                                             
 CcC   Conduction through the air in the core                                    
 CcC   Note: Using a constant for the factor in order to turn off                
 CcC         the air conduction in orbit.                                        
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = 18.128^2-4.656 = 324.0 in^2                  
 CcC                         Path = (0.50) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                         K11100 = 0.015                                      
 CcC                                        k   kfac                             
 CcC      PIV  11100, 1100, 1200, A1, 1.0, A72, K11100                           
 CcC                                                                             
 CcC   Radiation between the face sheets.                                        
 CcC   Sigma = 1.714E-9 BTU / ft^2 hr R^4 = 3.3063E-15 BTU / in^2 sec R^4        
 CcC    Factor = View Factor * Sigma * Area                                      
 CcC        View Factor   end to end       = 0.0637                              
 CcC                      end to side wall = 0.9363                              
 CcC                         Sigma = 3.3063E-15 BTU / in^2 sec R^4               
 CcC                          Area = 324.0 in^2                                  
 CcC    Factor end to end        = 0.0637 * 3.3063E-15 * 324.0 = 1.1936E-12      
 CcC    Factor end to side wall  = 0.9363 * 3.3063E-15 * 324.0 = 1.1936E-12      
 CcC                              Epsilon  Factor                                
 CcC       SIV -91100, 1100, 1200,     A14, 6.8238E-14                           
 CcC       SIV -91101, 1101, 1100,     A14, 1.0030E-12                           
 CcC       SIV -91200, 1200, 1101,     A14, 1.0030E-12                           
 CcC                                                                             
 CcC   Conduction through the inner face sheet (Haynes 230)                      
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (18.128*18.128) in^2                         
 CcC                         Path = (0.0035) in                                  
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 CcC       SIV   1200, 1200, 1201, A12, 2.173                                    
 CcC       SIV   1201, 1201, 2000, A12, 2.173                                    
 CcC                                                                             
 CcC   Conduction through the Saffil insulation                                  
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (18.128*18.128) in^2                         
 CcC                         Path = (1.10) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                                       k   kfac                              
 Cc       PIV 2000, 2000, 2001, A1, 14.7, A32, 6.915E-3                          
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0) in^2                             
 CcC                         Path = (1.10) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                                       k   kfac                              
 Cc       PIV 2001, 2001, 3000, A1, 14.7, A32, 7.597E-3                          
 Cc                                                                              
 CcC   Air conduction from Saffil lower surface to foam upper surface <- OLD     
 CcC   Air conduction from Inconel lower surface to Saffil upper surface         
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = ((19.0*19.0) in^2                            
 CcC                                Panel Aera - Stanchion Area                  
 CcC                         Path = (0.25) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                         K3000 = 3.343E-2                                    
 CcC                                        k   kfac                             
 CcC      PIV   3000, 3000, 4000, A1, 1.0, A72, K3000 <- OLD                     
 Cc       PIV   3000, 1100, 2000, A1, 1.0, A72, K3000                            
 Cc                                                                              
 CcC   Radiation across the air gap                                              
 CcC   Sigma = 1.714E-9 BTU / ft^2 hr R^4 = 3.3063E-15 BTU / in^2 hr R^4         
 CcC   RIF = Radiation Interchange Factor = Epsilon * View Factor                
 CcC        Epsilon = 0.9                                                        
 CcC        View Factor = 1.0                                                    
 CcC                                 RIF   Sigma       Area  Dummy               
 CcC      CAL -93000, 3000, 4000,    0.9, 3.3063E-15, 361.0, 1.0 <- OLD          
 Cc       CAL -93000, 1100, 2000,    0.9, 3.3063E-15, 361.0, 1.0                 
 Cc                                                                              
 CcC   Conduction across the foam (Airex)                                        
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = ((19.0*19.0) in^2                            
 CcC                                Panel Aera - Stanchion Area                  
 CcC                         Path = (0.50) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                                      k   kfac                               
 CcC      PIV 4000, 4000, 4001, A1, 1.0, A42, 1.671E-2 <- OLD                    
 Cc       PIV 4000, 3000, 4001, A1, 1.0, A42, 1.671E-2                           
 Cc       PIV 4001, 4001, 5000, A1, 1.0, A42, 1.671E-2                           
  
 C   Conduction through the tank wall outer face sheet                           
 CcC                         (IM7/977-2  Total thickness 0.0624")                
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0) in^2                             
 CcC                         Path = (0.0312) in                                  
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 Cc       SIV   5000, 5000, 5001, A52, 2.678E-1                                  
 Cc       SIV   5001, 5001, 5100, A52, 2.678E-1                                  
 C                         (IM7/977-2  Total thickness 0.078")                   
 C                         kfac = ((Area/Path) * Units Conversion)               
 C                         Area = (19.0*19.0) in^2                               
 C                         Path = (0.039) in                                     
 C                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12) 
 C                               k   kfac                                        
        SIV   5000, 5000, 5001, A52, 2.143E-1                                    
        SIV   5001, 5001, 5100, A52, 2.143E-1                                    
  
 CcC   Conduction through the core cell walls - Korex Arimid Paper  Total thickness 1.25"  
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0*0.035) in^2                       
 CcC                                Note: End on core area is 3.5% of the total area.      
 CcC                         Path = (0.75) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 Cc       SIV   5100, 5100, 5101, A83, 3.900E-4                                  
 Cc       SIV   5101, 5101, 5200, A83, 3.900E-4                                  
 C   Conduction through the core cell walls - Korex Arimid Paper  Total thickness 1.0"     
 C                         kfac = ((Area/Path) * Units Conversion)               
 C                         Area = (19.0*19.0*0.035) in^2                         
 C                                Note: End on core area is 3.5% of the total area.        
 C                         Path = (0.50) in                                      
 C                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12) 
 C                               k   kfac                                        
        SIV   5100, 5100, 5101, A83, 5.850E-4                                    
        SIV   5101, 5101, 5200, A83, 5.850E-4                                    
  
 C   Conduction through the H2 in the core                                       
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0*0.965) in^2                       
 CcC                         Path = (1.50) in                                    
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                         K15100 = 5.376E-3                                   
 CcC                               k   kfac                                      
 Cc       SIV  15100, 5100, 5200, A92, K15100                                    
  
  
 C   Radiation between the face sheets.                                          
 C   Sigma = 1.714E-9 BTU / ft^2 hr R^4 = 3.3063E-15 BTU / in^2 hr R^4           
 C   RIF = Radiation Interchange Factor = Epsilon * View Factor                  
 C        Epsilon = 0.9                                                          
 C        View Factor   end to end       = 0.0019                                
 C                      end to side wall = 0.9981                                
 C                                 RIF   Sigma       Area  Dummy                 
        CAL -95100, 5100, 5200, 0.0017, 3.3063E-15, 348.4, 1.0                   
        CAL -95101, 5101, 5100, 0.8983, 3.3063E-15, 348.4, 1.0                   
        CAL -95200, 5200, 5101, 0.8983, 3.3063E-15, 348.4, 1.0                   
  
 C   Conduction through the tank wall outer face sheet                           
 CcC                         (IM7/977-2  Total thickness 0.0624")                
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0) in^2                             
 CcC                         Path = (0.0324) in                                  
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                               k   kfac                                      
 Cc       SIV   5200, 5200, 5201, A52, 2.579E-1                                  
 Cc       SIV   5201, 5201, 6000, A52, 2.579E-1                                  
 C                         (IM7/977-2  Total thickness 0.078")                   
 C                         kfac = ((Area/Path) * Units Conversion)               
 C                         Area = (19.0*19.0) in^2                               
 C                         Path = (0.039) in                                     
 C                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12) 
 C                               k   kfac                                        
        SIV   5200, 5200, 5201, A52, 2.143E-1                                    
        SIV   5201, 5201, 6000, A52, 2.143E-1                                    
  
 CcC   Conduction from the middle of the tank wall to the inner tank boundary node         
 CcC   Note: This connector will be turned off after the ascent.                 
 CcC                         kfac = ((Area/Path) * Units Conversion)             
 CcC                         Area = (19.0*19.0) in^2                             
 CcC                         Path = (0.0324) in                                  
 CcC                         UC   = Hour to Seconds (1/3600), Feet to inchs (1/12)         
 CcC                         K15201 = 2.579E-1                                   
 CcC                               k   kfac                                      
 Cc       SIV  15201, 5201,    3, A52, K15201                                    
  
  
 C *** Energy exchange with the tank interior propellant. ***                    
 C                                                                               
 C   Assume there is convection from the inner tank surface to the propellant.   
 Cc                                                                              
 Cc  Assume h_liquid = 20 BTU/hr ft**2, and h_vapor = 20 BTU/hr ft**2            
 Cc                                                                              
 Cc  Assume  1 BTU/hr ft**2 = 1.929E-6 BTU/sec in**2                             
 Cc  Assume 20 BTU/hr ft**2 = 3.858E-5 BTU/sec in**2                             
 Cc                                                                              
 C                               x     z      h      Dum                         
 Cc       CAL  6000, 6000,    3, 19.0, 19.0, 3.858E-5, 1.0                       
        CAL  6000, 6000,    3, 19.0, 19.0, 1.929E-6, 1.0                         
  
  
        END                                                                      

  COND ANALYSIS - CONST=      5, VARB=      7 TOTAL=     12, EFF=     12, LIN=      8, RAD=      4, O/W=      0, NLG=      7

     RELATIVE NUMBERS                                             ACTUAL NUMBERS

       1 THRU     10           1    -90002      5000      5001      5100      5101    -95100    -95101    -95200      5200
      11 THRU     12        5201      6000
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-'2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3CONSTANTS DATA                                                      
            NDIM   = 1000000                                                     
 C          NLOOP  = 50                                                          
            NLOOP  = 500                                                         
            BALENG = 0.00001                                                     
            ARLXCA = 0.0008                                                      
            DRLXCA = 0.0008                                                      
            CSGFAC = 1.00                                                        
 CcC          TIMEND = 15100.0                                                   
 Cc           TIMEND = 490.0                                                     
            TIMEND = 135.0                                                       
 C          TIMEO  = -9000.0                                                     
 C          TIMEO  = -18000.0                                                    
 C          TIMEO  = 130.0                                                       
            TIMEO  = -4000.0                                                     
 C          OUTPUT = 100.0                                                       
            OUTPUT = 2.0                                                         
 Cc           999,     0.0                                                       
 Cc           3000,    3.343E-2                                                  
 Cc           11100,   0.015                                                     
 Cc                                                                              
 Cc         15100,   5.376E-3                                                    
 Cc           15100,   8.064E-3                                                  
 Cc                                                                              
 Cc           15201,   2.579E-1                                                  
        END                                                                      

 CONSTANTS - CC(  8/128), USER=      0, CAPC=      3, SRCE=      2, COND=      7, PRES=      0, TUBE=      0, TOTAL=   12
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-'2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

 C       BCD 3ARRAY DATA                                                         *         
        BCD 3ARRAY DATA                                                          
 CcC                                                                             
 CcC Surface Pressure Profile (From: RAS-T Study Wind)                           
 CcC    Note:  130  to  490 sec.                                                 
 CcC                                                                             
 CcC Time (sec) vs Pressure (atmo)                                               
 Cc           1                                                                  
 Cc             -4000.0,0.0591                                                   
 Cc               130.0,0.0591                                                   
 Cc               140.0,0.0392                                                   
 Cc               150.0,0.0258                                                   
 Cc               160.0,0.0165                                                   
 Cc               165.0,0.0132                                                   
 Cc               170.0,0.0107                                                   
 Cc               172.0,0.0097                                                   
 Cc               174.0,0.0090                                                   
 Cc               176.0,0.0078                                                   
 Cc               178.0,0.0067                                                   
 Cc               180.0,0.0059                                                   
 Cc               185.0,0.0044                                                   
 Cc               190.0,0.0034                                                   
 Cc               200.0,0.0019                                                   
 Cc               210.0,0.0013                                                   
 Cc               220.0,0.0010                                                   
 Cc               230.0,0.0009                                                   
 Cc               240.0,0.0008                                                   
 Cc               250.0,0.0009                                                   
 Cc               260.0,0.0011                                                   
 Cc               270.0,0.0015                                                   
 Cc               280.0,0.0021                                                   
 Cc               290.0,0.0034                                                   
 Cc               300.0,0.0058                                                   
 Cc               310.0,0.0107                                                   
 Cc               312.0,0.0121                                                   
 Cc               314.0,0.0140                                                   
 Cc               316.0,0.0161                                                   
 Cc               318.0,0.0254                                                   
 Cc               320.0,0.0292                                                   
 Cc               322.0,0.0334                                                   
 Cc               324.0,0.0381                                                   
 Cc               326.0,0.0433                                                   
 Cc               328.0,0.0491                                                   
 Cc               330.0,0.0558                                                   
 Cc               332.0,0.0633                                                   
 Cc               334.0,0.0709                                                   
 Cc               335.0,0.0756                                                   
 Cc               336.0,0.0333                                                   
 Cc               338.0,0.0372                                                   
 Cc               340.0,0.0413                                                   
 Cc               342.0,0.0458                                                   
 Cc               344.0,0.0506                                                   
 Cc               346.0,0.0562                                                   
 Cc               348.0,0.0605                                                   
 Cc               350.0,0.0633                                                   
 Cc               355.0,0.0709                                                   
 Cc               360.0,0.0742                                                   
 Cc               365.0,0.0742                                                   
 Cc               370.0,0.0742                                                   
 Cc               380.0,0.0737                                                   
 Cc               390.0,0.0723                                                   
 Cc               400.0,0.0709                                                   
 Cc               410.0,0.0680                                                   
 Cc               420.0,0.0657                                                   
 Cc               440.0,0.0595                                                   
 Cc               450.0,0.0562                                                   
 Cc               460.0,0.0529                                                   
 Cc               470.0,0.0496                                                   
 Cc               480.0,0.0464                                                   
 Cc               490.0,0.0434                                                   
 Cc           END                                                                
 CcC           1                                                                 
 CcC             -4000.0,      1.0                                               
 CcC                 0.0,      1.0,    25.0, 9.722E-1,    50.0, 9.452E-1         
 CcC                60.0, 4.306E-1,    70.0, 1.962E-1,    80.0, 8.939E-2         
 CcC                90.0, 4.073E-2,   100.0, 1.856E-2,   110.0, 8.454E-3         
 CcC               120.0, 3.852E-3,   130.0, 1.755E-3,   140.0, 7.995E-4         
 CcC               150.0, 3.643E-4,   160.0, 1.660E-4,   170.0, 7.561E-5         
 CcC               180.0, 7.198E-5,   190.0, 6.852E-5,   200.0, 6.522E-5         
 CcC               210.0, 6.209E-5,   220.0, 5.910E-5,   230.0, 5.626E-5         
 CcC               240.0, 5.356E-5,   250.0, 5.098E-5,   260.0, 4.853E-5         
 CcC               270.0, 4.620E-5,   280.0, 4.398E-5,   300.0, 3.985E-5         
 CcC               400.0, 2.435E-5,   500.0, 1.487E-5,   600.0, 9.087E-6         
 CcC               700.0, 5.552E-6,   800.0, 3.392E-6,   900.0, 2.072E-6         
 CcC              1000.0, 1.266E-6,  1100.0, 7.735E-7,  1200.0, 4.726E-7         
 CcC              1300.0, 2.888E-7,  1400.0, 1.765E-7,  1500.0, 1.078E-7         
 CcC              1600.0, 6.590E-8,  1700.0, 4.027E-8,  1800.0, 2.461E-8         
 CcC              1900.0, 1.504E-8,  2000.0, 9.189E-9,  2100.0, 5.615E-9         
 CcC              2135.0, 4.726E-9,  8638.0, 4.726E-9,  8700.0, 1.543E-8         
 CcC              8800.0, 1.040E-7,  8900.0, 7.011E-7                            
 CcC              9000.0, 4.726E-6,  9100.0, 3.191E-5,  9200.0, 2.155E-4         
 CcC              9300.0, 1.455E-3,  9350.0, 3.781E-3,  9400.0, 4.124E-3         
 CcC              9500.0, 4.908E-3,  9600.0, 5.841E-3,  9700.0, 6.951E-3         
 CcC              9800.0, 8.272E-3,  9900.0, 9.844E-3, 10000.0, 1.172E-2         
 CcC             10100.0, 1.394E-2, 10200.0, 1.659E-2, 10300.0, 1.974E-2         
 CcC             10400.0, 2.350E-2, 10500.0, 2.796E-2, 10600.0, 3.328E-2         
 CcC             10700.0, 3.960E-2, 10800.0, 4.713E-2, 10900.0, 5.608E-2         
 CcC             11000.0, 6.674E-2, 11100.0, 7.942E-2, 11200.0, 9.452E-2         
 CcC             11250.0, 1.400E-1, 11300.0, 2.075E-1, 11350.0, 3.074E-1         
 CcC             11400.0, 4.555E-1, 11450.0, 6.749E-1, 11500.0,      1.0         
 CcC           END                                                               
 CcC                                                                             
 CcC Surface Heat Load Profile (From: RAS-T Study Wind)                          
 CcC    Note:  130  to  490 sec.                                                 
 CcC                                                                             
 CcC Time (sec) vs Heat Load (BTU/in^2 sec)                                      
 Cc           2                                                                  
 Cc            -4000.0,0.014233                                                  
 Cc              130.0,0.014233                                                  
 Cc              140.0,0.018308                                                  
 Cc              150.0,0.015510                                                  
 Cc              160.0,0.006563                                                  
 Cc              165.0,0.007010                                                  
 Cc              170.0,0.007563                                                  
 Cc              172.0,0.007995                                                  
 Cc              174.0,0.008251                                                  
 Cc              176.0,0.007674                                                  
 Cc              178.0,0.007131                                                  
 Cc              180.0,0.006623                                                  
 Cc              185.0,0.005738                                                  
 Cc              190.0,0.004971                                                  
 Cc              200.0,0.003777                                                  
 Cc              210.0,0.003014                                                  
 Cc              220.0,0.002595                                                  
 Cc              230.0,0.002391                                                  
 Cc              240.0,0.002343                                                  
 Cc              250.0,0.002438                                                  
 Cc              260.0,0.002660                                                  
 Cc              270.0,0.003109                                                  
 Cc              280.0,0.003835                                                  
 Cc              290.0,0.004777                                                  
 Cc              300.0,0.006201                                                  
 Cc              310.0,0.008108                                                  
 Cc              312.0,0.008557                                                  
 Cc              314.0,0.009150                                                  
 Cc              316.0,0.009743                                                  
 Cc              318.0,0.012624                                                  
 Cc              320.0,0.013276                                                  
 Cc              322.0,0.013883                                                  
 Cc              324.0,0.014339                                                  
 Cc              326.0,0.041879                                                  
 Cc              328.0,0.057556                                                  
 Cc              330.0,0.066688                                                  
 Cc              332.0,0.075750                                                  
 Cc              334.0,0.083917                                                  
 Cc              335.0,0.088229                                                  
 Cc              336.0,0.030828                                                  
 Cc              338.0,0.043704                                                  
 Cc              340.0,0.048125                                                  
 Cc              342.0,0.051994                                                  
 Cc              344.0,0.055791                                                  
 Cc              346.0,0.059858                                                  
 Cc              348.0,0.062148                                                  
 Cc              350.0,0.062900                                                  
 Cc              355.0,0.064269                                                  
 Cc              360.0,0.060694                                                  
 Cc              365.0,0.056953                                                  
 Cc              370.0,0.054536                                                  
 Cc              380.0,0.049434                                                  
 Cc              390.0,0.044180                                                  
 Cc              400.0,0.039035                                                  
 Cc              410.0,0.034329                                                  
 Cc              420.0,0.030837                                                  
 Cc              440.0,0.018463                                                  
 Cc              450.0,0.016266                                                  
 Cc              460.0,0.013795                                                  
 Cc              470.0,0.011520                                                  
 Cc              480.0,0.009479                                                  
 Cc              490.0,0.007692                                                  
 Cc           END                                                                
  
  
 C                                                                               
 C Surface Heat Load Profile for *** 16 ft dia ***                               
 C    Note:  0  to  135.74 sec.                                                  
 C                                                                               
 C Time (sec) vs Heat Load (BTU/in^2 sec)                                        
            2                                                                    
             -4000.0,0.00002563                                                  
               0.00 , 0.00002563                                                 
               0.50 , 0.00002543                                                 
               1.00 , 0.00002524                                                 
               1.50 , 0.00002505                                                 
               2.00 , 0.00002488                                                 
               2.50 , 0.00002470                                                 
               3.00 , 0.00002454                                                 
               3.50 , 0.00002439                                                 
               4.00 , 0.00002424                                                 
               4.00 , 0.00002407                                                 
               4.50 , 0.00002398                                                 
               5.00 , 0.00002414                                                 
               5.50 , 0.00002451                                                 
               6.00 , 0.00002503                                                 
               6.50 , 0.00002562                                                 
               7.00 , 0.00002627                                                 
               7.50 , 0.00002696                                                 
               8.00 , 0.00002770                                                 
               8.50 , 0.00002847                                                 
               9.00 , 0.00002928                                                 
               9.50 , 0.00003013                                                 
               10.00 , 0.00003100                                                
               10.50 , 0.00003190                                                
               11.00 , 0.00003281                                                
               11.50 , 0.00003374                                                
               12.00 , 0.00003467                                                
               12.50 , 0.00003559                                                
               13.00 , 0.00003650                                                
               13.50 , 0.00003737                                                
               14.00 , 0.00003820                                                
               14.50 , 0.00003900                                                
               15.00 , 0.00003976                                                
               15.50 , 0.00004050                                                
               16.00 , 0.00004123                                                
               16.50 , 0.00004194                                                
               17.00 , 0.00004266                                                
               17.50 , 0.00004339                                                
               18.00 , 0.00004414                                                
               18.50 , 0.00004490                                                
               19.00 , 0.00004567                                                
               19.50 , 0.00004647                                                
               20.00 , 0.00004729                                                
               20.50 , 0.00004813                                                
               21.00 , 0.00004900                                                
               21.50 , 0.00004991                                                
               22.00 , 0.00005086                                                
               22.50 , 0.00005187                                                
               23.00 , 0.00005294                                                
               23.50 , 0.00005409                                                
               24.00 , 0.00005530                                                
               24.50 , 0.00005656                                                
               25.00 , 0.00005787                                                
               25.50 , 0.00005924                                                
               26.00 , 0.00006067                                                
               26.50 , 0.00006217                                                
               27.00 , 0.00006373                                                
               27.50 , 0.00006535                                                
               28.00 , 0.00006705                                                
               28.50 , 0.00006883                                                
               29.00 , 0.00007068                                                
               29.50 , 0.00007262                                                
               30.00 , 0.00007465                                                
               30.50 , 0.00007677                                                
               31.00 , 0.00007899                                                
               31.50 , 0.00008131                                                
               32.00 , 0.00008374                                                
               32.50 , 0.00008628                                                
               33.00 , 0.00008890                                                
               33.50 , 0.00009163                                                
               34.00 , 0.00009450                                                
               34.50 , 0.00009756                                                
               35.00 , 0.00010085                                                
               35.50 , 0.00010443                                                
               36.00 , 0.00010834                                                
               36.50 , 0.00011262                                                
               37.00 , 0.00011734                                                
               37.50 , 0.00012251                                                
               38.00 , 0.00012820                                                
               38.50 , 0.00013442                                                
               39.00 , 0.00014121                                                
               39.50 , 0.00014856                                                
               40.00 , 0.00015649                                                
               40.50 , 0.00016502                                                
               41.00 , 0.00017417                                                
               41.50 , 0.00018398                                                
               42.00 , 0.00019448                                                
               42.50 , 0.00020572                                                
               43.00 , 0.00021777                                                
               43.50 , 0.00023069                                                
               44.00 , 0.00024455                                                
               44.50 , 0.00025944                                                
               45.00 , 0.00027584                                                
               45.50 , 0.00029385                                                
               46.00 , 0.00031350                                                
               46.50 , 0.00033500                                                
               47.00 , 0.00035858                                                
               47.50 , 0.00038447                                                
               48.00 , 0.00041288                                                
               48.50 , 0.00044399                                                
               49.00 , 0.00047793                                                
               49.50 , 0.00051500                                                
               50.00 , 0.00055640                                                
               50.50 , 0.00060261                                                
               51.00 , 0.00065386                                                
               51.50 , 0.00071021                                                
               52.00 , 0.00077142                                                
               52.50 , 0.00083696                                                
               53.00 , 0.00090589                                                
               53.50 , 0.00097694                                                
               54.00 , 0.00104815                                                
               54.50 , 0.00111904                                                
               55.00 , 0.00119051                                                
               55.50 , 0.00126394                                                
               56.00 , 0.00134119                                                
               56.50 , 0.00142460                                                
               57.00 , 0.00151714                                                
               57.50 , 0.00162248                                                
               58.00 , 0.00174321                                                
               58.50 , 0.00187860                                                
               59.00 , 0.00202705                                                
               59.50 , 0.00218597                                                
               60.00 , 0.00235196                                                
               60.50 , 0.00252110                                                
               61.00 , 0.00268946                                                
               61.50 , 0.00285441                                                
               62.00 , 0.00301786                                                
               62.50 , 0.00318147                                                
               63.00 , 0.00334669                                                
               63.50 , 0.00351482                                                
               64.00 , 0.00368686                                                
               64.50 , 0.00386316                                                
               65.00 , 0.00404214                                                
               65.50 , 0.00422062                                                
               66.00 , 0.00439664                                                
               66.50 , 0.00456804                                                
               67.00 , 0.00473245                                                
               67.50 , 0.00488738                                                
               68.00 , 0.00503025                                                
               68.50 , 0.00515972                                                
               69.00 , 0.00527321                                                
               69.50 , 0.00536736                                                
               70.00 , 0.00544036                                                
               70.50 , 0.00549091                                                
               71.00 , 0.00551836                                                
               71.50 , 0.00552281                                                
               72.00 , 0.00550521                                                
               72.50 , 0.00546722                                                
               73.00 , 0.00540222                                                
               73.50 , 0.00530962                                                
               74.00 , 0.00519754                                                
               74.50 , 0.00507671                                                
               75.00 , 0.00495967                                                
               75.50 , 0.00485967                                                
               76.00 , 0.00478941                                                
               76.50 , 0.00475991                                                
               77.00 , 0.00477946                                                
               77.50 , 0.00485291                                                
               78.00 , 0.00498103                                                
               78.50 , 0.00516015                                                
               79.00 , 0.00538195                                                
               79.50 , 0.00563631                                                
               80.00 , 0.00591943                                                
               80.50 , 0.00622622                                                
               81.00 , 0.00655140                                                
               81.50 , 0.00688993                                                
               82.00 , 0.00723716                                                
               82.50 , 0.00758893                                                
               83.00 , 0.00794164                                                
               83.50 , 0.00829232                                                
               84.00 , 0.00863858                                                
               84.50 , 0.00897865                                                
               85.00 , 0.00931140                                                
               85.50 , 0.00963623                                                
               86.00 , 0.00994755                                                
               86.50 , 0.01023253                                                
               87.00 , 0.01049148                                                
               87.50 , 0.01072603                                                
               88.00 , 0.01093833                                                
               88.50 , 0.01113253                                                
               89.00 , 0.01131910                                                
               89.50 , 0.01149194                                                
               90.00 , 0.01165430                                                
               90.50 , 0.01180969                                                
               91.00 , 0.01196177                                                
               91.50 , 0.01211685                                                
               92.00 , 0.01228505                                                
               92.50 , 0.01245919                                                
               93.00 , 0.01263113                                                
               93.50 , 0.01280482                                                
               94.00 , 0.01295505                                                
               94.50 , 0.01307139                                                
               95.00 , 0.01314314                                                
               95.50 , 0.01315943                                                
               96.00 , 0.01310938                                                
               96.50 , 0.01298218                                                
               97.00 , 0.01275093                                                
               97.50 , 0.01242696                                                
               98.00 , 0.01204724                                                
               98.50 , 0.01165323                                                
               99.00 , 0.01128579                                                
               99.50 , 0.01097870                                                
               100.00 , 0.01075312                                               
               100.50 , 0.01061466                                               
               101.00 , 0.01055399                                               
               101.50 , 0.01055059                                               
               102.00 , 0.01057836                                               
               102.50 , 0.01061751                                               
               103.00 , 0.01065829                                               
               103.50 , 0.01069523                                               
               104.00 , 0.01072579                                               
               104.50 , 0.01074940                                               
               105.00 , 0.01076680                                               
               105.50 , 0.01077966                                               
               106.00 , 0.01079052                                               
               106.50 , 0.01080046                                               
               107.00 , 0.01080026                                               
               107.50 , 0.01078952                                               
               108.00 , 0.01077026                                               
               108.50 , 0.01074512                                               
               109.00 , 0.01071723                                               
               109.50 , 0.01069044                                               
               110.00 , 0.01066961                                               
               110.50 , 0.01065982                                               
               111.00 , 0.01066814                                               
               111.50 , 0.01071097                                               
               112.00 , 0.01079014                                               
               112.50 , 0.01089682                                               
               113.00 , 0.01100768                                               
               113.50 , 0.01110944                                               
               114.00 , 0.01118143                                               
               114.50 , 0.01120482                                               
               114.57 , 0.01120333                                               
               114.57 , 0.01120333                                               
               115.00 , 0.01109325                                               
               115.50 , 0.01088695                                               
               116.00 , 0.01057224                                               
               116.50 , 0.01022662                                               
               117.00 , 0.00986852                                               
               117.50 , 0.00950667                                               
               118.00 , 0.00914870                                               
               118.50 , 0.00880119                                               
               119.00 , 0.00846978                                               
               119.50 , 0.00815565                                               
               120.00 , 0.00784966                                               
               120.50 , 0.00755120                                               
               121.00 , 0.00726039                                               
               121.50 , 0.00697733                                               
               122.00 , 0.00670214                                               
               122.50 , 0.00643486                                               
               123.00 , 0.00617539                                               
               123.50 , 0.00592398                                               
               124.00 , 0.00568045                                               
               124.50 , 0.00544473                                               
               125.00 , 0.00520901                                               
               125.50 , 0.00497756                                               
               126.00 , 0.00475583                                               
               126.50 , 0.00454393                                               
               127.00 , 0.00434104                                               
               127.50 , 0.00414715                                               
               128.00 , 0.00396146                                               
               128.50 , 0.00378420                                               
               129.00 , 0.00361459                                               
               129.50 , 0.00345203                                               
               130.00 , 0.00329674                                               
               130.50 , 0.00314765                                               
               131.00 , 0.00300495                                               
               131.50 , 0.00286834                                               
               132.00 , 0.00273785                                               
               132.50 , 0.00261256                                               
               133.00 , 0.00249378                                               
               133.50 , 0.00237958                                               
               134.00 , 0.00227088                                               
               134.50 , 0.00216699                                               
               135.00 , 0.00206810                                               
               135.50 , 0.00197370                                               
               135.74 , 0.00192979                                               
               136.00 , 0.00188180                                               
               136.50 , 0.00179276                                               
               136.74 , 0.00175146                                               
               137.00 , 0.00170878                                               
               137.50 , 0.00163375                                               
               138.00 , 0.00156614                                               
               138.50 , 0.00150388                                               
               139.00 , 0.00144583                                               
               139.50 , 0.00139096                                               
               140.00 , 0.00133840                                               
               140.50 , 0.00128784                                               
               141.00 , 0.00123915                                               
               141.50 , 0.00119257                                               
               142.00 , 0.00114792                                               
               142.50 , 0.00110529                                               
               143.00 , 0.00106440                                               
               143.50 , 0.00102523                                               
               144.00 , 0.00098759                                               
               144.50 , 0.00095140                                               
               145.00 , 0.00091669                                               
               145.50 , 0.00088340                                               
               146.00 , 0.00085087                                               
               146.50 , 0.00081920                                               
               147.00 , 0.00078883                                               
               147.50 , 0.00075960                                               
               148.00 , 0.00073258                                               
               148.50 , 0.00070714                                               
               149.00 , 0.00068357                                               
               149.50 , 0.00066125                                               
               150.00 , 0.00064056                                               
               150.50 , 0.00062088                                               
               151.00 , 0.00060262                                               
               151.50 , 0.00058520                                               
               152.00 , 0.00056896                                               
               152.50 , 0.00055343                                               
               153.00 , 0.00053894                                               
               153.50 , 0.00052508                                               
               154.00 , 0.00051208                                               
               154.50 , 0.00049960                                               
               155.00 , 0.00048786                                               
               155.50 , 0.00047659                                               
               156.00 , 0.00046598                                               
               156.50 , 0.00045582                                               
               157.00 , 0.00044623                                               
               157.50 , 0.00043704                                               
               158.00 , 0.00042833                                               
               158.50 , 0.00042001                                               
               159.00 , 0.00041205                                               
               159.50 , 0.00040444                                               
               160.00 , 0.00039717                                               
               160.50 , 0.00039028                                               
               161.00 , 0.00038363                                               
               161.50 , 0.00037733                                               
               162.00 , 0.00037121                                               
               162.50 , 0.00036543                                               
               163.00 , 0.00035978                                               
               163.50 , 0.00035444                                               
               164.00 , 0.00034920                                               
               164.50 , 0.00034429                                               
               165.00 , 0.00033949                                               
               165.50 , 0.00033493                                               
               166.00 , 0.00033049                                               
               166.50 , 0.00032624                                               
               167.00 , 0.00032213                                               
               167.50 , 0.00031817                                               
               168.00 , 0.00031437                                               
               168.50 , 0.00031066                                               
               169.00 , 0.00030713                                               
               169.50 , 0.00030366                                               
               170.00 , 0.00030038                                               
               170.50 , 0.00029716                                               
               171.00 , 0.00029409                                               
               171.50 , 0.00029109                                               
               172.00 , 0.00028820                                               
               172.50 , 0.00028541                                               
               173.00 , 0.00028268                                               
               173.50 , 0.00028008                                               
               174.00 , 0.00027752                                               
               174.50 , 0.00027508                                               
               175.00 , 0.00027270                                               
               175.50 , 0.00027040                                               
               176.00 , 0.00026818                                               
               176.50 , 0.00026600                                               
               177.00 , 0.00026393                                               
               177.50 , 0.00026188                                               
               178.00 , 0.00025992                                               
               178.50 , 0.00025801                                               
               179.00 , 0.00025616                                               
               179.50 , 0.00025438                                               
               180.00 , 0.00025263                                               
               180.50 , 0.00025098                                               
               181.00 , 0.00024936                                               
               181.50 , 0.00024779                                               
               182.00 , 0.00024628                                               
               182.25 , 0.00024552                                               
               182.50 , 0.00024489                                               
               183.00 , 0.00024366                                               
               183.50 , 0.00024246                                               
               184.00 , 0.00024130                                               
               184.50 , 0.00024020                                               
               185.00 , 0.00023911                                               
               185.50 , 0.00023810                                               
               186.00 , 0.00023711                                               
               186.50 , 0.00023614                                               
               187.00 , 0.00023521                                               
               187.50 , 0.00023430                                               
               188.00 , 0.00023345                                               
               188.50 , 0.00023263                                               
               189.00 , 0.00023183                                               
               189.50 , 0.00023109                                               
               190.00 , 0.00023035                                               
               190.50 , 0.00022966                                               
               191.00 , 0.00022901                                               
               191.50 , 0.00022837                                               
               192.00 , 0.00022776                                               
               192.50 , 0.00022716                                               
               193.00 , 0.00022657                                               
               193.50 , 0.00022606                                               
               194.00 , 0.00022557                                               
               194.50 , 0.00022508                                               
               195.00 , 0.00022462                                               
               195.50 , 0.00022418                                               
               196.00 , 0.00022376                                               
               196.50 , 0.00022338                                               
               197.00 , 0.00022301                                               
               197.50 , 0.00022267                                               
               198.00 , 0.00022236                                               
               198.50 , 0.00022206                                               
               199.00 , 0.00022178                                               
               199.50 , 0.00022152                                               
               200.00 , 0.00022127                                               
               200.50 , 0.00022106                                               
               201.00 , 0.00022089                                               
               201.50 , 0.00022072                                               
               202.00 , 0.00022057                                               
               202.50 , 0.00022044                                               
               203.00 , 0.00022032                                               
               203.50 , 0.00022021                                               
               204.00 , 0.00022013                                               
               204.50 , 0.00022005                                               
               205.00 , 0.00022000                                               
               205.50 , 0.00021997                                               
               206.00 , 0.00021995                                               
               206.50 , 0.00021996                                               
               207.00 , 0.00021999                                               
               207.50 , 0.00022003                                               
               208.00 , 0.00022009                                               
               208.50 , 0.00022019                                               
               209.00 , 0.00022031                                               
               209.50 , 0.00022043                                               
               210.00 , 0.00022055                                               
               210.50 , 0.00022068                                               
               211.00 , 0.00022082                                               
               211.50 , 0.00022100                                               
               212.00 , 0.00022121                                               
               212.50 , 0.00022143                                               
               213.00 , 0.00022167                                               
               213.50 , 0.00022191                                               
               214.00 , 0.00022216                                               
               214.50 , 0.00022242                                               
               215.00 , 0.00022270                                               
               215.50 , 0.00022301                                               
               216.00 , 0.00022333                                               
               216.50 , 0.00022367                                               
               217.00 , 0.00022402                                               
               217.50 , 0.00022439                                               
               218.00 , 0.00022477                                               
               218.50 , 0.00022516                                               
               219.00 , 0.00022558                                               
               219.50 , 0.00022600                                               
               220.00 , 0.00022644                                               
               220.50 , 0.00022690                                               
               221.00 , 0.00022738                                               
               221.50 , 0.00022787                                               
               222.00 , 0.00022837                                               
               222.50 , 0.00022890                                               
               223.00 , 0.00022943                                               
               223.50 , 0.00022997                                               
               224.00 , 0.00023053                                               
               224.50 , 0.00023112                                               
               225.00 , 0.00023171                                               
               225.50 , 0.00023232                                               
               226.00 , 0.00023295                                               
               226.50 , 0.00023359                                               
               227.00 , 0.00023425                                               
               227.50 , 0.00023492                                               
               228.00 , 0.00023561                                               
               228.50 , 0.00023631                                               
               229.00 , 0.00023703                                               
               229.50 , 0.00023776                                               
               230.00 , 0.00023851                                               
               230.50 , 0.00023927                                               
               231.00 , 0.00024006                                               
               231.50 , 0.00024086                                               
               232.00 , 0.00024167                                               
               232.50 , 0.00024250                                               
               233.00 , 0.00024335                                               
               233.50 , 0.00024421                                               
               234.00 , 0.00024509                                               
               234.50 , 0.00024598                                               
               235.00 , 0.00024689                                               
               235.50 , 0.00024782                                               
               236.00 , 0.00024876                                               
               236.50 , 0.00024971                                               
               237.00 , 0.00025068                                               
               237.50 , 0.00025168                                               
               238.00 , 0.00025269                                               
               238.50 , 0.00025372                                               
               239.00 , 0.00025476                                               
               239.50 , 0.00025582                                               
               240.00 , 0.00025691                                               
               240.50 , 0.00025801                                               
               241.00 , 0.00025912                                               
               241.50 , 0.00026025                                               
               242.00 , 0.00026140                                               
               242.50 , 0.00026258                                               
               243.00 , 0.00026377                                               
               243.50 , 0.00026498                                               
               244.00 , 0.00026620                                               
               244.50 , 0.00026744                                               
               245.00 , 0.00026871                                               
               245.50 , 0.00026999                                               
               246.00 , 0.00027130                                               
               246.50 , 0.00027262                                               
               247.00 , 0.00027396                                               
               247.50 , 0.00027532                                               
               248.00 , 0.00027670                                               
               248.50 , 0.00027811                                               
               249.00 , 0.00027953                                               
               249.50 , 0.00028098                                               
               250.00 , 0.00028244                                               
               250.50 , 0.00028392                                               
               251.00 , 0.00028543                                               
               251.50 , 0.00028697                                               
               252.00 , 0.00028852                                               
               252.50 , 0.00029009                                               
               253.00 , 0.00029168                                               
               253.50 , 0.00029330                                               
               254.00 , 0.00029494                                               
               254.50 , 0.00029661                                               
               255.00 , 0.00029830                                               
               255.50 , 0.00030001                                               
               256.00 , 0.00030175                                               
               256.50 , 0.00030351                                               
               257.00 , 0.00030529                                               
               257.50 , 0.00030711                                               
               258.00 , 0.00030894                                               
               258.50 , 0.00031080                                               
               259.00 , 0.00031269                                               
               259.50 , 0.00031460                                               
               260.00 , 0.00031653                                               
               260.50 , 0.00031850                                               
               261.00 , 0.00032049                                               
               261.50 , 0.00032250                                               
               262.00 , 0.00032455                                               
               262.50 , 0.00032662                                               
               263.00 , 0.00032872                                               
               263.50 , 0.00033084                                               
               264.00 , 0.00033300                                               
               264.50 , 0.00033519                                               
               265.00 , 0.00033742                                               
               265.50 , 0.00033967                                               
               266.00 , 0.00034195                                               
               266.50 , 0.00034426                                               
               267.00 , 0.00034660                                               
               267.50 , 0.00034897                                               
               268.00 , 0.00035138                                               
               268.50 , 0.00035382                                               
               269.00 , 0.00035630                                               
               269.50 , 0.00035881                                               
               270.00 , 0.00036135                                               
               270.50 , 0.00036393                                               
               271.00 , 0.00036654                                               
               271.50 , 0.00036918                                               
               272.00 , 0.00037186                                               
               272.50 , 0.00037458                                               
               273.00 , 0.00037733                                               
               273.50 , 0.00038013                                               
               274.00 , 0.00038296                                               
               274.50 , 0.00038583                                               
               275.00 , 0.00038874                                               
               275.50 , 0.00039168                                               
               276.00 , 0.00039467                                               
               276.50 , 0.00039770                                               
               277.00 , 0.00040077                                               
               277.50 , 0.00040388                                               
               278.00 , 0.00040704                                               
               278.50 , 0.00041024                                               
               279.00 , 0.00041349                                               
               279.50 , 0.00041678                                               
               280.00 , 0.00042012                                               
               280.50 , 0.00042351                                               
               281.00 , 0.00042694                                               
               281.50 , 0.00043041                                               
               282.00 , 0.00043394                                               
               282.50 , 0.00043751                                               
               283.00 , 0.00044114                                               
               283.50 , 0.00044481                                               
               284.00 , 0.00044854                                               
               284.50 , 0.00045233                                               
               285.00 , 0.00045616                                               
               285.50 , 0.00046005                                               
               286.00 , 0.00046400                                               
               286.50 , 0.00046800                                               
               287.00 , 0.00047205                                               
               287.50 , 0.00047617                                               
               288.00 , 0.00048034                                               
               288.50 , 0.00048457                                               
               289.00 , 0.00048887                                               
               289.50 , 0.00049322                                               
               290.00 , 0.00049764                                               
               290.50 , 0.00050211                                               
               291.00 , 0.00050666                                               
               291.50 , 0.00051127                                               
               292.00 , 0.00051595                                               
               292.50 , 0.00052069                                               
               293.00 , 0.00052551                                               
               293.50 , 0.00053039                                               
               294.00 , 0.00053535                                               
               294.50 , 0.00054038                                               
               295.00 , 0.00054548                                               
               295.50 , 0.00055066                                               
               296.00 , 0.00055591                                               
               296.50 , 0.00056124                                               
               297.00 , 0.00056665                                               
               297.50 , 0.00057215                                               
               298.00 , 0.00057772                                               
               298.50 , 0.00058337                                               
               299.00 , 0.00058911                                               
               299.50 , 0.00059494                                               
               300.00 , 0.00060085                                               
               300.50 , 0.00060685                                               
               301.00 , 0.00061295                                               
               301.50 , 0.00061913                                               
               302.00 , 0.00062541                                               
               302.50 , 0.00063178                                               
               303.00 , 0.00063825                                               
               303.50 , 0.00064482                                               
               304.00 , 0.00065148                                               
               304.25 , 0.00065482                                               
               304.50 , 0.00065661                                               
               305.00 , 0.00066015                                               
               305.50 , 0.00066220                                               
               306.00 , 0.00066383                                               
               306.50 , 0.00066541                                               
               307.00 , 0.00066693                                               
               307.50 , 0.00066841                                               
               308.00 , 0.00066984                                               
               308.50 , 0.00067121                                               
               309.00 , 0.00067255                                               
               309.50 , 0.00067383                                               
               310.00 , 0.00067508                                               
               310.50 , 0.00067628                                               
               311.00 , 0.00067744                                               
               311.50 , 0.00067857                                               
               312.00 , 0.00067965                                               
               312.50 , 0.00068069                                               
               313.00 , 0.00068170                                               
               313.50 , 0.00068267                                               
               313.65 , 0.00068295                                               
              4000.00 , 0.00068295                                               
            END                                                                  
  
  
 C                                                                               
 C Surface Heat Load Profile for *** 12 ft dia ***                               
 C    Note:  0  to  135.74 sec.                                                  
 C                                                                               
 C Time (sec) vs Heat Load (BTU/in^2 sec)                                        
            3                                                                    
             -4000.0,0.00002960                                                  
               0.00 , 0.00002960                                                 
               0.50 , 0.00002937                                                 
               1.00 , 0.00002914                                                 
               1.50 , 0.00002893                                                 
               2.00 , 0.00002872                                                 
               2.50 , 0.00002853                                                 
               3.00 , 0.00002834                                                 
               3.50 , 0.00002816                                                 
               4.00 , 0.00002799                                                 
               4.00 , 0.00002779                                                 
               4.50 , 0.00002769                                                 
               5.00 , 0.00002788                                                 
               5.50 , 0.00002830                                                 
               6.00 , 0.00002890                                                 
               6.50 , 0.00002959                                                 
               7.00 , 0.00003033                                                 
               7.50 , 0.00003113                                                 
               8.00 , 0.00003198                                                 
               8.50 , 0.00003288                                                 
               9.00 , 0.00003381                                                 
               9.50 , 0.00003479                                                 
               10.00 , 0.00003579                                                
               10.50 , 0.00003683                                                
               11.00 , 0.00003789                                                
               11.50 , 0.00003896                                                
               12.00 , 0.00004004                                                
               12.50 , 0.00004110                                                
               13.00 , 0.00004214                                                
               13.50 , 0.00004315                                                
               14.00 , 0.00004411                                                
               14.50 , 0.00004503                                                
               15.00 , 0.00004591                                                
               15.50 , 0.00004677                                                
               16.00 , 0.00004760                                                
               16.50 , 0.00004843                                                
               17.00 , 0.00004926                                                
               17.50 , 0.00005010                                                
               18.00 , 0.00005096                                                
               18.50 , 0.00005184                                                
               19.00 , 0.00005274                                                
               19.50 , 0.00005366                                                
               20.00 , 0.00005460                                                
               20.50 , 0.00005557                                                
               21.00 , 0.00005658                                                
               21.50 , 0.00005763                                                
               22.00 , 0.00005873                                                
               22.50 , 0.00005989                                                
               23.00 , 0.00006113                                                
               23.50 , 0.00006246                                                
               24.00 , 0.00006385                                                
               24.50 , 0.00006531                                                
               25.00 , 0.00006683                                                
               25.50 , 0.00006841                                                
               26.00 , 0.00007006                                                
               26.50 , 0.00007178                                                
               27.00 , 0.00007358                                                
               27.50 , 0.00007546                                                
               28.00 , 0.00007743                                                
               28.50 , 0.00007948                                                
               29.00 , 0.00008162                                                
               29.50 , 0.00008386                                                
               30.00 , 0.00008620                                                
               30.50 , 0.00008865                                                
               31.00 , 0.00009121                                                
               31.50 , 0.00009389                                                
               32.00 , 0.00009670                                                
               32.50 , 0.00009963                                                
               33.00 , 0.00010265                                                
               33.50 , 0.00010580                                                
               34.00 , 0.00010912                                                
               34.50 , 0.00011265                                                
               35.00 , 0.00011645                                                
               35.50 , 0.00012058                                                
               36.00 , 0.00012510                                                
               36.50 , 0.00013005                                                
               37.00 , 0.00013549                                                
               37.50 , 0.00014147                                                
               38.00 , 0.00014803                                                
               38.50 , 0.00015521                                                
               39.00 , 0.00016305                                                
               39.50 , 0.00017154                                                
               40.00 , 0.00018070                                                
               40.50 , 0.00019055                                                
               41.00 , 0.00020112                                                
               41.50 , 0.00021244                                                
               42.00 , 0.00022456                                                
               42.50 , 0.00023755                                                
               43.00 , 0.00025146                                                
               43.50 , 0.00026638                                                
               44.00 , 0.00028239                                                
               44.50 , 0.00029957                                                
               45.00 , 0.00031851                                                
               45.50 , 0.00033931                                                
               46.00 , 0.00036200                                                
               46.50 , 0.00038683                                                
               47.00 , 0.00041406                                                
               47.50 , 0.00044395                                                
               48.00 , 0.00047676                                                
               48.50 , 0.00051268                                                
               49.00 , 0.00055187                                                
               49.50 , 0.00059467                                                
               50.00 , 0.00064248                                                
               50.50 , 0.00069583                                                
               51.00 , 0.00075501                                                
               51.50 , 0.00082008                                                
               52.00 , 0.00089076                                                
               52.50 , 0.00096643                                                
               53.00 , 0.00104603                                                
               53.50 , 0.00112807                                                
               54.00 , 0.00121030                                                
               54.50 , 0.00129215                                                
               55.00 , 0.00137468                                                
               55.50 , 0.00145948                                                
               56.00 , 0.00154867                                                
               56.50 , 0.00164498                                                
               57.00 , 0.00175185                                                
               57.50 , 0.00187348                                                
               58.00 , 0.00201288                                                
               58.50 , 0.00216922                                                
               59.00 , 0.00234063                                                
               59.50 , 0.00252414                                                
               60.00 , 0.00271581                                                
               60.50 , 0.00291112                                                
               61.00 , 0.00310553                                                
               61.50 , 0.00329599                                                
               62.00 , 0.00348472                                                
               62.50 , 0.00367364                                                
               63.00 , 0.00386443                                                
               63.50 , 0.00405857                                                
               64.00 , 0.00425722                                                
               64.50 , 0.00446080                                                
               65.00 , 0.00466747                                                
               65.50 , 0.00487356                                                
               66.00 , 0.00507681                                                
               66.50 , 0.00527472                                                
               67.00 , 0.00546457                                                
               67.50 , 0.00564347                                                
               68.00 , 0.00580843                                                
               68.50 , 0.00595793                                                
               69.00 , 0.00608898                                                
               69.50 , 0.00619769                                                
               70.00 , 0.00628199                                                
               70.50 , 0.00634036                                                
               71.00 , 0.00637206                                                
               71.50 , 0.00637720                                                
               72.00 , 0.00635687                                                
               72.50 , 0.00631301                                                
               73.00 , 0.00623794                                                
               73.50 , 0.00613102                                                
               74.00 , 0.00600160                                                
               74.50 , 0.00586208                                                
               75.00 , 0.00572694                                                
               75.50 , 0.00561146                                                
               76.00 , 0.00553034                                                
               76.50 , 0.00549627                                                
               77.00 , 0.00551885                                                
               77.50 , 0.00560366                                                
               78.00 , 0.00575160                                                
               78.50 , 0.00595843                                                
               79.00 , 0.00621454                                                
               79.50 , 0.00650825                                                
               80.00 , 0.00683517                                                
               80.50 , 0.00718942                                                
               81.00 , 0.00756490                                                
               81.50 , 0.00795580                                                
               82.00 , 0.00835675                                                
               82.50 , 0.00876294                                                
               83.00 , 0.00917023                                                
               83.50 , 0.00957515                                                
               84.00 , 0.00997498                                                
               84.50 , 0.01036765                                                
               85.00 , 0.01075188                                                
               85.50 , 0.01112697                                                
               86.00 , 0.01148645                                                
               86.50 , 0.01181551                                                
               87.00 , 0.01211453                                                
               87.50 , 0.01238536                                                
               88.00 , 0.01263050                                                
               88.50 , 0.01285474                                                
               89.00 , 0.01307018                                                
               89.50 , 0.01326975                                                
               90.00 , 0.01345723                                                
               90.50 , 0.01363666                                                
               91.00 , 0.01381226                                                
               91.50 , 0.01399134                                                
               92.00 , 0.01418556                                                
               92.50 , 0.01438664                                                
               93.00 , 0.01458518                                                
               93.50 , 0.01478574                                                
               94.00 , 0.01495921                                                
               94.50 , 0.01509355                                                
               95.00 , 0.01517640                                                
               95.50 , 0.01519521                                                
               96.00 , 0.01513741                                                
               96.50 , 0.01499054                                                
               97.00 , 0.01472351                                                
               97.50 , 0.01434942                                                
               98.00 , 0.01391096                                                
               98.50 , 0.01345600                                                
               99.00 , 0.01303171                                                
               99.50 , 0.01267711                                                
               100.00 , 0.01241664                                               
               100.50 , 0.01225676                                               
               101.00 , 0.01218671                                               
               101.50 , 0.01218278                                               
               102.00 , 0.01221484                                               
               102.50 , 0.01226004                                               
               103.00 , 0.01230713                                               
               103.50 , 0.01234979                                               
               104.00 , 0.01238508                                               
               104.50 , 0.01241234                                               
               105.00 , 0.01243243                                               
               105.50 , 0.01244728                                               
               106.00 , 0.01245983                                               
               106.50 , 0.01247131                                               
               107.00 , 0.01247107                                               
               107.50 , 0.01245867                                               
               108.00 , 0.01243643                                               
               108.50 , 0.01240740                                               
               109.00 , 0.01237519                                               
               109.50 , 0.01234426                                               
               110.00 , 0.01232021                                               
               110.50 , 0.01230890                                               
               111.00 , 0.01231851                                               
               111.50 , 0.01236797                                               
               112.00 , 0.01245939                                               
               112.50 , 0.01258257                                               
               113.00 , 0.01271057                                               
               113.50 , 0.01282808                                               
               114.00 , 0.01291121                                               
               114.50 , 0.01293822                                               
               114.57 , 0.01293650                                               
               114.57 , 0.01293650                                               
               115.00 , 0.01280939                                               
               115.50 , 0.01257117                                               
               116.00 , 0.01220777                                               
               116.50 , 0.01180869                                               
               117.00 , 0.01139520                                               
               117.50 , 0.01097736                                               
               118.00 , 0.01056401                                               
               118.50 , 0.01016275                                               
               119.00 , 0.00978006                                               
               119.50 , 0.00941733                                               
               120.00 , 0.00906401                                               
               120.50 , 0.00871938                                               
               121.00 , 0.00838358                                               
               121.50 , 0.00805673                                               
               122.00 , 0.00773897                                               
               122.50 , 0.00743034                                               
               123.00 , 0.00713073                                               
               123.50 , 0.00684042                                               
               124.00 , 0.00655922                                               
               124.50 , 0.00628703                                               
               125.00 , 0.00601484                                               
               125.50 , 0.00574759                                               
               126.00 , 0.00549156                                               
               126.50 , 0.00524688                                               
               127.00 , 0.00501261                                               
               127.50 , 0.00478872                                               
               128.00 , 0.00457430                                               
               128.50 , 0.00436962                                               
               129.00 , 0.00417377                                               
               129.50 , 0.00398607                                               
               130.00 , 0.00380675                                               
               130.50 , 0.00363459                                               
               131.00 , 0.00346982                                               
               131.50 , 0.00331208                                               
               132.00 , 0.00316140                                               
               132.50 , 0.00301672                                               
               133.00 , 0.00287958                                               
               133.50 , 0.00274770                                               
               134.00 , 0.00262219                                               
               134.50 , 0.00250223                                               
               135.00 , 0.00238804                                               
               135.50 , 0.00227903                                               
               135.74 , 0.00222834                                               
               136.00 , 0.00217292                                               
               136.50 , 0.00207010                                               
               136.74 , 0.00202241                                               
               137.00 , 0.00197313                                               
               137.50 , 0.00188649                                               
               138.00 , 0.00180842                                               
               138.50 , 0.00173653                                               
               139.00 , 0.00166950                                               
               139.50 , 0.00160615                                               
               140.00 , 0.00154546                                               
               140.50 , 0.00148707                                               
               141.00 , 0.00143085                                               
               141.50 , 0.00137706                                               
               142.00 , 0.00132551                                               
               142.50 , 0.00127628                                               
               143.00 , 0.00122906                                               
               143.50 , 0.00118384                                               
               144.00 , 0.00114038                                               
               144.50 , 0.00109859                                               
               145.00 , 0.00105850                                               
               145.50 , 0.00102007                                               
               146.00 , 0.00098250                                               
               146.50 , 0.00094593                                               
               147.00 , 0.00091086                                               
               147.50 , 0.00087712                                               
               148.00 , 0.00084591                                               
               148.50 , 0.00081654                                               
               149.00 , 0.00078932                                               
               149.50 , 0.00076355                                               
               150.00 , 0.00073965                                               
               150.50 , 0.00071693                                               
               151.00 , 0.00069584                                               
               151.50 , 0.00067574                                               
               152.00 , 0.00065698                                               
               152.50 , 0.00063904                                               
               153.00 , 0.00062232                                               
               153.50 , 0.00060631                                               
               154.00 , 0.00059129                                               
               154.50 , 0.00057689                                               
               155.00 , 0.00056333                                               
               155.50 , 0.00055032                                               
               156.00 , 0.00053807                                               
               156.50 , 0.00052634                                               
               157.00 , 0.00051526                                               
               157.50 , 0.00050465                                               
               158.00 , 0.00049459                                               
               158.50 , 0.00048498                                               
               159.00 , 0.00047580                                               
               159.50 , 0.00046701                                               
               160.00 , 0.00045861                                               
               160.50 , 0.00045066                                               
               161.00 , 0.00044298                                               
               161.50 , 0.00043570                                               
               162.00 , 0.00042864                                               
               162.50 , 0.00042197                                               
               163.00 , 0.00041544                                               
               163.50 , 0.00040927                                               
               164.00 , 0.00040322                                               
               164.50 , 0.00039755                                               
               165.00 , 0.00039201                                               
               165.50 , 0.00038674                                               
               166.00 , 0.00038161                                               
               166.50 , 0.00037671                                               
               167.00 , 0.00037197                                               
               167.50 , 0.00036739                                               
               168.00 , 0.00036300                                               
               168.50 , 0.00035872                                               
               169.00 , 0.00035465                                               
               169.50 , 0.00035064                                               
               170.00 , 0.00034685                                               
               170.50 , 0.00034313                                               
               171.00 , 0.00033958                                               
               171.50 , 0.00033613                                               
               172.00 , 0.00033279                                               
               172.50 , 0.00032956                                               
               173.00 , 0.00032641                                               
               173.50 , 0.00032341                                               
               174.00 , 0.00032045                                               
               174.50 , 0.00031764                                               
               175.00 , 0.00031489                                               
               175.50 , 0.00031223                                               
               176.00 , 0.00030966                                               
               176.50 , 0.00030715                                               
               177.00 , 0.00030476                                               
               177.50 , 0.00030239                                               
               178.00 , 0.00030013                                               
               178.50 , 0.00029792                                               
               179.00 , 0.00029579                                               
               179.50 , 0.00029373                                               
               180.00 , 0.00029171                                               
               180.50 , 0.00028980                                               
               181.00 , 0.00028793                                               
               181.50 , 0.00028612                                               
               182.00 , 0.00028438                                               
               182.25 , 0.00028351                                               
               182.50 , 0.00028277                                               
               183.00 , 0.00028135                                               
               183.50 , 0.00027996                                               
               184.00 , 0.00027863                                               
               184.50 , 0.00027735                                               
               185.00 , 0.00027610                                               
               185.50 , 0.00027493                                               
               186.00 , 0.00027379                                               
               186.50 , 0.00027267                                               
               187.00 , 0.00027160                                               
               187.50 , 0.00027055                                               
               188.00 , 0.00026957                                               
               188.50 , 0.00026862                                               
               189.00 , 0.00026770                                               
               189.50 , 0.00026683                                               
               190.00 , 0.00026599                                               
               190.50 , 0.00026519                                               
               191.00 , 0.00026444                                               
               191.50 , 0.00026370                                               
               192.00 , 0.00026299                                               
               192.50 , 0.00026230                                               
               193.00 , 0.00026162                                               
               193.50 , 0.00026104                                               
               194.00 , 0.00026046                                               
               194.50 , 0.00025991                                               
               195.00 , 0.00025937                                               
               195.50 , 0.00025886                                               
               196.00 , 0.00025837                                               
               196.50 , 0.00025794                                               
               197.00 , 0.00025751                                               
               197.50 , 0.00025712                                               
               198.00 , 0.00025676                                               
               198.50 , 0.00025641                                               
               199.00 , 0.00025609                                               
               199.50 , 0.00025579                                               
               200.00 , 0.00025550                                               
               200.50 , 0.00025526                                               
               201.00 , 0.00025506                                               
               201.50 , 0.00025487                                               
               202.00 , 0.00025470                                               
               202.50 , 0.00025454                                               
               203.00 , 0.00025440                                               
               203.50 , 0.00025428                                               
               204.00 , 0.00025418                                               
               204.50 , 0.00025410                                               
               205.00 , 0.00025404                                               
               205.50 , 0.00025400                                               
               206.00 , 0.00025398                                               
               206.50 , 0.00025398                                               
               207.00 , 0.00025402                                               
               207.50 , 0.00025407                                               
               208.00 , 0.00025414                                               
               208.50 , 0.00025426                                               
               209.00 , 0.00025439                                               
               209.50 , 0.00025453                                               
               210.00 , 0.00025467                                               
               210.50 , 0.00025482                                               
               211.00 , 0.00025498                                               
               211.50 , 0.00025519                                               
               212.00 , 0.00025543                                               
               212.50 , 0.00025569                                               
               213.00 , 0.00025596                                               
               213.50 , 0.00025624                                               
               214.00 , 0.00025652                                               
               214.50 , 0.00025682                                               
               215.00 , 0.00025716                                               
               215.50 , 0.00025751                                               
               216.00 , 0.00025788                                               
               216.50 , 0.00025827                                               
               217.00 , 0.00025868                                               
               217.50 , 0.00025910                                               
               218.00 , 0.00025954                                               
               218.50 , 0.00026000                                               
               219.00 , 0.00026048                                               
               219.50 , 0.00026097                                               
               220.00 , 0.00026147                                               
               220.50 , 0.00026200                                               
               221.00 , 0.00026256                                               
               221.50 , 0.00026312                                               
               222.00 , 0.00026370                                               
               222.50 , 0.00026431                                               
               223.00 , 0.00026492                                               
               223.50 , 0.00026555                                               
               224.00 , 0.00026620                                               
               224.50 , 0.00026687                                               
               225.00 , 0.00026756                                               
               225.50 , 0.00026827                                               
               226.00 , 0.00026898                                               
               226.50 , 0.00026973                                               
               227.00 , 0.00027049                                               
               227.50 , 0.00027127                                               
               228.00 , 0.00027206                                               
               228.50 , 0.00027287                                               
               229.00 , 0.00027370                                               
               229.50 , 0.00027454                                               
               230.00 , 0.00027540                                               
               230.50 , 0.00027629                                               
               231.00 , 0.00027719                                               
               231.50 , 0.00027812                                               
               232.00 , 0.00027906                                               
               232.50 , 0.00028001                                               
               233.00 , 0.00028099                                               
               233.50 , 0.00028199                                               
               234.00 , 0.00028301                                               
               234.50 , 0.00028404                                               
               235.00 , 0.00028509                                               
               235.50 , 0.00028616                                               
               236.00 , 0.00028724                                               
               236.50 , 0.00028835                                               
               237.00 , 0.00028946                                               
               237.50 , 0.00029062                                               
               238.00 , 0.00029178                                               
               238.50 , 0.00029297                                               
               239.00 , 0.00029417                                               
               239.50 , 0.00029540                                               
               240.00 , 0.00029665                                               
               240.50 , 0.00029792                                               
               241.00 , 0.00029921                                               
               241.50 , 0.00030052                                               
               242.00 , 0.00030184                                               
               242.50 , 0.00030320                                               
               243.00 , 0.00030457                                               
               243.50 , 0.00030597                                               
               244.00 , 0.00030738                                               
               244.50 , 0.00030882                                               
               245.00 , 0.00031028                                               
               245.50 , 0.00031176                                               
               246.00 , 0.00031327                                               
               246.50 , 0.00031479                                               
               247.00 , 0.00031634                                               
               247.50 , 0.00031791                                               
               248.00 , 0.00031951                                               
               248.50 , 0.00032113                                               
               249.00 , 0.00032278                                               
               249.50 , 0.00032444                                               
               250.00 , 0.00032613                                               
               250.50 , 0.00032785                                               
               251.00 , 0.00032959                                               
               251.50 , 0.00033136                                               
               252.00 , 0.00033315                                               
               252.50 , 0.00033497                                               
               253.00 , 0.00033681                                               
               253.50 , 0.00033867                                               
               254.00 , 0.00034057                                               
               254.50 , 0.00034250                                               
               255.00 , 0.00034445                                               
               255.50 , 0.00034643                                               
               256.00 , 0.00034843                                               
               256.50 , 0.00035046                                               
               257.00 , 0.00035252                                               
               257.50 , 0.00035462                                               
               258.00 , 0.00035674                                               
               258.50 , 0.00035888                                               
               259.00 , 0.00036106                                               
               259.50 , 0.00036327                                               
               260.00 , 0.00036550                                               
               260.50 , 0.00036777                                               
               261.00 , 0.00037007                                               
               261.50 , 0.00037240                                               
               262.00 , 0.00037476                                               
               262.50 , 0.00037715                                               
               263.00 , 0.00037957                                               
               263.50 , 0.00038203                                               
               264.00 , 0.00038452                                               
               264.50 , 0.00038705                                               
               265.00 , 0.00038961                                               
               265.50 , 0.00039221                                               
               266.00 , 0.00039485                                               
               266.50 , 0.00039752                                               
               267.00 , 0.00040022                                               
               267.50 , 0.00040296                                               
               268.00 , 0.00040574                                               
               268.50 , 0.00040856                                               
               269.00 , 0.00041142                                               
               269.50 , 0.00041432                                               
               270.00 , 0.00041725                                               
               270.50 , 0.00042022                                               
               271.00 , 0.00042324                                               
               271.50 , 0.00042629                                               
               272.00 , 0.00042939                                               
               272.50 , 0.00043253                                               
               273.00 , 0.00043571                                               
               273.50 , 0.00043893                                               
               274.00 , 0.00044220                                               
               274.50 , 0.00044552                                               
               275.00 , 0.00044887                                               
               275.50 , 0.00045228                                               
               276.00 , 0.00045573                                               
               276.50 , 0.00045922                                               
               277.00 , 0.00046276                                               
               277.50 , 0.00046636                                               
               278.00 , 0.00047001                                               
               278.50 , 0.00047371                                               
               279.00 , 0.00047746                                               
               279.50 , 0.00048126                                               
               280.00 , 0.00048512                                               
               280.50 , 0.00048902                                               
               281.00 , 0.00049298                                               
               281.50 , 0.00049700                                               
               282.00 , 0.00050107                                               
               282.50 , 0.00050520                                               
               283.00 , 0.00050938                                               
               283.50 , 0.00051362                                               
               284.00 , 0.00051793                                               
               284.50 , 0.00052230                                               
               285.00 , 0.00052673                                               
               285.50 , 0.00053122                                               
               286.00 , 0.00053578                                               
               286.50 , 0.00054040                                               
               287.00 , 0.00054508                                               
               287.50 , 0.00054983                                               
               288.00 , 0.00055465                                               
               288.50 , 0.00055954                                               
               289.00 , 0.00056449                                               
               289.50 , 0.00056952                                               
               290.00 , 0.00057462                                               
               290.50 , 0.00057979                                               
               291.00 , 0.00058504                                               
               291.50 , 0.00059036                                               
               292.00 , 0.00059577                                               
               292.50 , 0.00060125                                               
               293.00 , 0.00060681                                               
               293.50 , 0.00061245                                               
               294.00 , 0.00061817                                               
               294.50 , 0.00062398                                               
               295.00 , 0.00062987                                               
               295.50 , 0.00063585                                               
               296.00 , 0.00064191                                               
               296.50 , 0.00064807                                               
               297.00 , 0.00065432                                               
               297.50 , 0.00066066                                               
               298.00 , 0.00066709                                               
               298.50 , 0.00067362                                               
               299.00 , 0.00068025                                               
               299.50 , 0.00068697                                               
               300.00 , 0.00069380                                               
               300.50 , 0.00070073                                               
               301.00 , 0.00070777                                               
               301.50 , 0.00071491                                               
               302.00 , 0.00072216                                               
               302.50 , 0.00072952                                               
               303.00 , 0.00073699                                               
               303.50 , 0.00074457                                               
               304.00 , 0.00075226                                               
               304.25 , 0.00075612                                               
               304.50 , 0.00075818                                               
               305.00 , 0.00076227                                               
               305.50 , 0.00076464                                               
               306.00 , 0.00076652                                               
               306.50 , 0.00076835                                               
               307.00 , 0.00077011                                               
               307.50 , 0.00077181                                               
               308.00 , 0.00077346                                               
               308.50 , 0.00077505                                               
               309.00 , 0.00077659                                               
               309.50 , 0.00077808                                               
               310.00 , 0.00077952                                               
               310.50 , 0.00078090                                               
               311.00 , 0.00078225                                               
               311.50 , 0.00078354                                               
               312.00 , 0.00078479                                               
               312.50 , 0.00078600                                               
               313.00 , 0.00078716                                               
               313.50 , 0.00078828                                               
               313.65 , 0.00078860                                               
              4000.00 , 0.00078860                                               
            END                                                                  
  
  
 C                                                                               
 C Surface Heat Load Profile for *** 9 ft dia ***                                
 C    Note:  0  to  135.74 sec.                                                  
 C                                                                               
 C Time (sec) vs Heat Load (BTU/in^2 sec)                                        
            4                                                                    
             -4000.0,0.00003418                                                  
               0.00 , 0.00003418                                                 
               0.50 , 0.00003391                                                 
               1.00 , 0.00003365                                                 
               1.50 , 0.00003341                                                 
               2.00 , 0.00003317                                                 
               2.50 , 0.00003294                                                 
               3.00 , 0.00003272                                                 
               3.50 , 0.00003252                                                 
               4.00 , 0.00003232                                                 
               4.00 , 0.00003209                                                 
               4.50 , 0.00003197                                                 
               5.00 , 0.00003219                                                 
               5.50 , 0.00003268                                                 
               6.00 , 0.00003337                                                 
               6.50 , 0.00003416                                                 
               7.00 , 0.00003502                                                 
               7.50 , 0.00003595                                                 
               8.00 , 0.00003693                                                 
               8.50 , 0.00003796                                                 
               9.00 , 0.00003904                                                 
               9.50 , 0.00004017                                                 
               10.00 , 0.00004133                                                
               10.50 , 0.00004253                                                
               11.00 , 0.00004375                                                
               11.50 , 0.00004499                                                
               12.00 , 0.00004623                                                
               12.50 , 0.00004746                                                
               13.00 , 0.00004866                                                
               13.50 , 0.00004983                                                
               14.00 , 0.00005094                                                
               14.50 , 0.00005200                                                
               15.00 , 0.00005301                                                
               15.50 , 0.00005400                                                
               16.00 , 0.00005497                                                
               16.50 , 0.00005592                                                
               17.00 , 0.00005688                                                
               17.50 , 0.00005785                                                
               18.00 , 0.00005885                                                
               18.50 , 0.00005986                                                
               19.00 , 0.00006090                                                
               19.50 , 0.00006196                                                
               20.00 , 0.00006305                                                
               20.50 , 0.00006417                                                
               21.00 , 0.00006533                                                
               21.50 , 0.00006654                                                
               22.00 , 0.00006781                                                
               22.50 , 0.00006916                                                
               23.00 , 0.00007059                                                
               23.50 , 0.00007212                                                
               24.00 , 0.00007373                                                
               24.50 , 0.00007541                                                
               25.00 , 0.00007716                                                
               25.50 , 0.00007899                                                
               26.00 , 0.00008090                                                
               26.50 , 0.00008289                                                
               27.00 , 0.00008497                                                
               27.50 , 0.00008714                                                
               28.00 , 0.00008941                                                
               28.50 , 0.00009177                                                
               29.00 , 0.00009425                                                
               29.50 , 0.00009683                                                
               30.00 , 0.00009953                                                
               30.50 , 0.00010236                                                
               31.00 , 0.00010532                                                
               31.50 , 0.00010841                                                
               32.00 , 0.00011166                                                
               32.50 , 0.00011504                                                
               33.00 , 0.00011853                                                
               33.50 , 0.00012217                                                
               34.00 , 0.00012600                                                
               34.50 , 0.00013008                                                
               35.00 , 0.00013447                                                
               35.50 , 0.00013924                                                
               36.00 , 0.00014445                                                
               36.50 , 0.00015017                                                
               37.00 , 0.00015645                                                
               37.50 , 0.00016335                                                
               38.00 , 0.00017093                                                
               38.50 , 0.00017922                                                
               39.00 , 0.00018827                                                
               39.50 , 0.00019808                                                
               40.00 , 0.00020865                                                
               40.50 , 0.00022003                                                
               41.00 , 0.00023223                                                
               41.50 , 0.00024530                                                
               42.00 , 0.00025930                                                
               42.50 , 0.00027430                                                
               43.00 , 0.00029037                                                
               43.50 , 0.00030759                                                
               44.00 , 0.00032607                                                
               44.50 , 0.00034592                                                
               45.00 , 0.00036779                                                
               45.50 , 0.00039180                                                
               46.00 , 0.00041800                                                
               46.50 , 0.00044667                                                
               47.00 , 0.00047811                                                
               47.50 , 0.00051263                                                
               48.00 , 0.00055051                                                
               48.50 , 0.00059199                                                
               49.00 , 0.00063724                                                
               49.50 , 0.00068667                                                
               50.00 , 0.00074187                                                
               50.50 , 0.00080348                                                
               51.00 , 0.00087181                                                
               51.50 , 0.00094694                                                
               52.00 , 0.00102857                                                
               52.50 , 0.00111594                                                
               53.00 , 0.00120786                                                
               53.50 , 0.00130258                                                
               54.00 , 0.00139753                                                
               54.50 , 0.00149205                                                
               55.00 , 0.00158735                                                
               55.50 , 0.00168526                                                
               56.00 , 0.00178825                                                
               56.50 , 0.00189947                                                
               57.00 , 0.00202286                                                
               57.50 , 0.00216331                                                
               58.00 , 0.00232428                                                
               58.50 , 0.00250481                                                
               59.00 , 0.00270273                                                
               59.50 , 0.00291463                                                
               60.00 , 0.00313595                                                
               60.50 , 0.00336147                                                
               61.00 , 0.00358596                                                
               61.50 , 0.00380589                                                
               62.00 , 0.00402382                                                
               62.50 , 0.00424196                                                
               63.00 , 0.00446226                                                
               63.50 , 0.00468644                                                
               64.00 , 0.00491582                                                
               64.50 , 0.00515089                                                
               65.00 , 0.00538954                                                
               65.50 , 0.00562751                                                
               66.00 , 0.00586220                                                
               66.50 , 0.00609073                                                
               67.00 , 0.00630995                                                
               67.50 , 0.00651652                                                
               68.00 , 0.00670701                                                
               68.50 , 0.00687964                                                
               69.00 , 0.00703096                                                
               69.50 , 0.00715649                                                
               70.00 , 0.00725383                                                
               70.50 , 0.00732123                                                
               71.00 , 0.00735783                                                
               71.50 , 0.00736377                                                
               72.00 , 0.00734029                                                
               72.50 , 0.00728964                                                
               73.00 , 0.00720297                                                
               73.50 , 0.00707950                                                
               74.00 , 0.00693007                                                
               74.50 , 0.00676896                                                
               75.00 , 0.00661291                                                
               75.50 , 0.00647957                                                
               76.00 , 0.00638589                                                
               76.50 , 0.00634656                                                
               77.00 , 0.00637263                                                
               77.50 , 0.00647056                                                
               78.00 , 0.00664139                                                
               78.50 , 0.00688021                                                
               79.00 , 0.00717594                                                
               79.50 , 0.00751509                                                
               80.00 , 0.00789259                                                
               80.50 , 0.00830164                                                
               81.00 , 0.00873521                                                
               81.50 , 0.00918659                                                
               82.00 , 0.00964956                                                
               82.50 , 0.01011859                                                
               83.00 , 0.01058888                                                
               83.50 , 0.01105645                                                
               84.00 , 0.01151813                                                
               84.50 , 0.01197156                                                
               85.00 , 0.01241522                                                
               85.50 , 0.01284834                                                
               86.00 , 0.01326343                                                
               86.50 , 0.01364340                                                
               87.00 , 0.01398868                                                
               87.50 , 0.01430140                                                
               88.00 , 0.01458447                                                
               88.50 , 0.01484340                                                
               89.00 , 0.01509217                                                
               89.50 , 0.01532261                                                
               90.00 , 0.01553910                                                
               90.50 , 0.01574628                                                
               91.00 , 0.01594905                                                
               91.50 , 0.01615583                                                
               92.00 , 0.01638011                                                
               92.50 , 0.01661229                                                
               93.00 , 0.01684154                                                
               93.50 , 0.01707313                                                
               94.00 , 0.01727344                                                
               94.50 , 0.01742856                                                
               95.00 , 0.01752422                                                
               95.50 , 0.01754594                                                
               96.00 , 0.01747921                                                
               96.50 , 0.01730961                                                
               97.00 , 0.01700127                                                
               97.50 , 0.01656932                                                
               98.00 , 0.01606302                                                
               98.50 , 0.01553767                                                
               99.00 , 0.01504775                                                
               99.50 , 0.01463830                                                
               100.00 , 0.01433752                                               
               100.50 , 0.01415292                                               
               101.00 , 0.01407202                                               
               101.50 , 0.01406748                                               
               102.00 , 0.01410451                                               
               102.50 , 0.01415670                                               
               103.00 , 0.01421108                                               
               103.50 , 0.01426033                                               
               104.00 , 0.01430108                                               
               104.50 , 0.01433256                                               
               105.00 , 0.01435576                                               
               105.50 , 0.01437291                                               
               106.00 , 0.01438739                                               
               106.50 , 0.01440065                                               
               107.00 , 0.01440037                                               
               107.50 , 0.01438605                                               
               108.00 , 0.01436038                                               
               108.50 , 0.01432685                                               
               109.00 , 0.01428966                                               
               109.50 , 0.01425395                                               
               110.00 , 0.01422618                                               
               110.50 , 0.01421312                                               
               111.00 , 0.01422422                                               
               111.50 , 0.01428132                                               
               112.00 , 0.01438689                                               
               112.50 , 0.01452913                                               
               113.00 , 0.01467693                                               
               113.50 , 0.01481262                                               
               114.00 , 0.01490860                                               
               114.50 , 0.01493979                                               
               114.57 , 0.01493781                                               
               114.57 , 0.01493781                                               
               115.00 , 0.01479103                                               
               115.50 , 0.01451597                                               
               116.00 , 0.01409635                                               
               116.50 , 0.01363553                                               
               117.00 , 0.01315806                                               
               117.50 , 0.01267559                                               
               118.00 , 0.01219829                                               
               118.50 , 0.01173495                                               
               119.00 , 0.01129306                                               
               119.50 , 0.01087422                                               
               120.00 , 0.01046624                                               
               120.50 , 0.01006829                                               
               121.00 , 0.00968054                                               
               121.50 , 0.00930313                                               
               122.00 , 0.00893621                                               
               122.50 , 0.00857983                                               
               123.00 , 0.00823387                                               
               123.50 , 0.00789865                                               
               124.00 , 0.00757395                                               
               124.50 , 0.00725965                                               
               125.00 , 0.00694536                                               
               125.50 , 0.00663676                                               
               126.00 , 0.00634112                                               
               126.50 , 0.00605859                                               
               127.00 , 0.00578807                                               
               127.50 , 0.00552954                                               
               128.00 , 0.00528196                                               
               128.50 , 0.00504561                                               
               129.00 , 0.00481947                                               
               129.50 , 0.00460272                                               
               130.00 , 0.00439566                                               
               130.50 , 0.00419688                                               
               131.00 , 0.00400661                                               
               131.50 , 0.00382447                                               
               132.00 , 0.00365047                                               
               132.50 , 0.00348342                                               
               133.00 , 0.00332505                                               
               133.50 , 0.00317278                                               
               134.00 , 0.00302784                                               
               134.50 , 0.00288933                                               
               135.00 , 0.00275747                                               
               135.50 , 0.00263161                                               
               135.74 , 0.00257307                                               
               136.00 , 0.00250907                                               
               136.50 , 0.00239035                                               
               136.74 , 0.00233528                                               
               137.00 , 0.00227838                                               
               137.50 , 0.00217834                                               
               138.00 , 0.00208818                                               
               138.50 , 0.00200518                                               
               139.00 , 0.00192778                                               
               139.50 , 0.00185462                                               
               140.00 , 0.00178454                                               
               140.50 , 0.00171713                                               
               141.00 , 0.00165220                                               
               141.50 , 0.00159009                                               
               142.00 , 0.00153057                                               
               142.50 , 0.00147372                                               
               143.00 , 0.00141920                                               
               143.50 , 0.00136698                                               
               144.00 , 0.00131679                                               
               144.50 , 0.00126854                                               
               145.00 , 0.00122225                                               
               145.50 , 0.00117787                                               
               146.00 , 0.00113450                                               
               146.50 , 0.00109227                                               
               147.00 , 0.00105178                                               
               147.50 , 0.00101281                                               
               148.00 , 0.00097677                                               
               148.50 , 0.00094286                                               
               149.00 , 0.00091143                                               
               149.50 , 0.00088167                                               
               150.00 , 0.00085408                                               
               150.50 , 0.00082784                                               
               151.00 , 0.00080349                                               
               151.50 , 0.00078027                                               
               152.00 , 0.00075862                                               
               152.50 , 0.00073790                                               
               153.00 , 0.00071859                                               
               153.50 , 0.00070010                                               
               154.00 , 0.00068277                                               
               154.50 , 0.00066613                                               
               155.00 , 0.00065048                                               
               155.50 , 0.00063545                                               
               156.00 , 0.00062131                                               
               156.50 , 0.00060776                                               
               157.00 , 0.00059497                                               
               157.50 , 0.00058272                                               
               158.00 , 0.00057110                                               
               158.50 , 0.00056001                                               
               159.00 , 0.00054940                                               
               159.50 , 0.00053926                                               
               160.00 , 0.00052956                                               
               160.50 , 0.00052037                                               
               161.00 , 0.00051151                                               
               161.50 , 0.00050311                                               
               162.00 , 0.00049495                                               
               162.50 , 0.00048724                                               
               163.00 , 0.00047971                                               
               163.50 , 0.00047259                                               
               164.00 , 0.00046560                                               
               164.50 , 0.00045906                                               
               165.00 , 0.00045265                                               
               165.50 , 0.00044657                                               
               166.00 , 0.00044065                                               
               166.50 , 0.00043498                                               
               167.00 , 0.00042951                                               
               167.50 , 0.00042422                                               
               168.00 , 0.00041916                                               
               168.50 , 0.00041422                                               
               169.00 , 0.00040951                                               
               169.50 , 0.00040488                                               
               170.00 , 0.00040051                                               
               170.50 , 0.00039621                                               
               171.00 , 0.00039211                                               
               171.50 , 0.00038813                                               
               172.00 , 0.00038427                                               
               172.50 , 0.00038054                                               
               173.00 , 0.00037690                                               
               173.50 , 0.00037344                                               
               174.00 , 0.00037002                                               
               174.50 , 0.00036678                                               
               175.00 , 0.00036360                                               
               175.50 , 0.00036053                                               
               176.00 , 0.00035757                                               
               176.50 , 0.00035467                                               
               177.00 , 0.00035190                                               
               177.50 , 0.00034917                                               
               178.00 , 0.00034657                                               
               178.50 , 0.00034401                                               
               179.00 , 0.00034154                                               
               179.50 , 0.00033917                                               
               180.00 , 0.00033684                                               
               180.50 , 0.00033464                                               
               181.00 , 0.00033247                                               
               181.50 , 0.00033039                                               
               182.00 , 0.00032837                                               
               182.25 , 0.00032736                                               
               182.50 , 0.00032651                                               
               183.00 , 0.00032488                                               
               183.50 , 0.00032328                                               
               184.00 , 0.00032174                                               
               184.50 , 0.00032026                                               
               185.00 , 0.00031881                                               
               185.50 , 0.00031746                                               
               186.00 , 0.00031614                                               
               186.50 , 0.00031486                                               
               187.00 , 0.00031362                                               
               187.50 , 0.00031240                                               
               188.00 , 0.00031127                                               
               188.50 , 0.00031018                                               
               189.00 , 0.00030911                                               
               189.50 , 0.00030811                                               
               190.00 , 0.00030714                                               
               190.50 , 0.00030621                                               
               191.00 , 0.00030534                                               
               191.50 , 0.00030450                                               
               192.00 , 0.00030368                                               
               192.50 , 0.00030288                                               
               193.00 , 0.00030210                                               
               193.50 , 0.00030142                                               
               194.00 , 0.00030076                                               
               194.50 , 0.00030011                                               
               195.00 , 0.00029950                                               
               195.50 , 0.00029890                                               
               196.00 , 0.00029835                                               
               196.50 , 0.00029784                                               
               197.00 , 0.00029735                                               
               197.50 , 0.00029690                                               
               198.00 , 0.00029648                                               
               198.50 , 0.00029608                                               
               199.00 , 0.00029571                                               
               199.50 , 0.00029536                                               
               200.00 , 0.00029503                                               
               200.50 , 0.00029475                                               
               201.00 , 0.00029452                                               
               201.50 , 0.00029430                                               
               202.00 , 0.00029410                                               
               202.50 , 0.00029392                                               
               203.00 , 0.00029376                                               
               203.50 , 0.00029362                                               
               204.00 , 0.00029351                                               
               204.50 , 0.00029341                                               
               205.00 , 0.00029334                                               
               205.50 , 0.00029330                                               
               206.00 , 0.00029327                                               
               206.50 , 0.00029327                                               
               207.00 , 0.00029332                                               
               207.50 , 0.00029338                                               
               208.00 , 0.00029345                                               
               208.50 , 0.00029359                                               
               209.00 , 0.00029374                                               
               209.50 , 0.00029391                                               
               210.00 , 0.00029407                                               
               210.50 , 0.00029424                                               
               211.00 , 0.00029443                                               
               211.50 , 0.00029467                                               
               212.00 , 0.00029495                                               
               212.50 , 0.00029525                                               
               213.00 , 0.00029556                                               
               213.50 , 0.00029588                                               
               214.00 , 0.00029621                                               
               214.50 , 0.00029656                                               
               215.00 , 0.00029694                                               
               215.50 , 0.00029735                                               
               216.00 , 0.00029778                                               
               216.50 , 0.00029822                                               
               217.00 , 0.00029870                                               
               217.50 , 0.00029919                                               
               218.00 , 0.00029969                                               
               218.50 , 0.00030022                                               
               219.00 , 0.00030077                                               
               219.50 , 0.00030134                                               
               220.00 , 0.00030192                                               
               220.50 , 0.00030254                                               
               221.00 , 0.00030318                                               
               221.50 , 0.00030383                                               
               222.00 , 0.00030450                                               
               222.50 , 0.00030519                                               
               223.00 , 0.00030591                                               
               223.50 , 0.00030663                                               
               224.00 , 0.00030738                                               
               224.50 , 0.00030816                                               
               225.00 , 0.00030895                                               
               225.50 , 0.00030977                                               
               226.00 , 0.00031060                                               
               226.50 , 0.00031146                                               
               227.00 , 0.00031234                                               
               227.50 , 0.00031323                                               
               228.00 , 0.00031415                                               
               228.50 , 0.00031508                                               
               229.00 , 0.00031604                                               
               229.50 , 0.00031702                                               
               230.00 , 0.00031801                                               
               230.50 , 0.00031903                                               
               231.00 , 0.00032008                                               
               231.50 , 0.00032114                                               
               232.00 , 0.00032223                                               
               232.50 , 0.00032333                                               
               233.00 , 0.00032446                                               
               233.50 , 0.00032562                                               
               234.00 , 0.00032679                                               
               234.50 , 0.00032798                                               
               235.00 , 0.00032919                                               
               235.50 , 0.00033043                                               
               236.00 , 0.00033168                                               
               236.50 , 0.00033295                                               
               237.00 , 0.00033425                                               
               237.50 , 0.00033557                                               
               238.00 , 0.00033692                                               
               238.50 , 0.00033829                                               
               239.00 , 0.00033968                                               
               239.50 , 0.00034109                                               
               240.00 , 0.00034254                                               
               240.50 , 0.00034401                                               
               241.00 , 0.00034550                                               
               241.50 , 0.00034701                                               
               242.00 , 0.00034854                                               
               242.50 , 0.00035010                                               
               243.00 , 0.00035169                                               
               243.50 , 0.00035330                                               
               244.00 , 0.00035494                                               
               244.50 , 0.00035659                                               
               245.00 , 0.00035828                                               
               245.50 , 0.00035999                                               
               246.00 , 0.00036173                                               
               246.50 , 0.00036349                                               
               247.00 , 0.00036528                                               
               247.50 , 0.00036709                                               
               248.00 , 0.00036894                                               
               248.50 , 0.00037081                                               
               249.00 , 0.00037271                                               
               249.50 , 0.00037463                                               
               250.00 , 0.00037659                                               
               250.50 , 0.00037857                                               
               251.00 , 0.00038058                                               
               251.50 , 0.00038262                                               
               252.00 , 0.00038469                                               
               252.50 , 0.00038679                                               
               253.00 , 0.00038891                                               
               253.50 , 0.00039107                                               
               254.00 , 0.00039326                                               
               254.50 , 0.00039548                                               
               255.00 , 0.00039774                                               
               255.50 , 0.00040002                                               
               256.00 , 0.00040233                                               
               256.50 , 0.00040468                                               
               257.00 , 0.00040706                                               
               257.50 , 0.00040948                                               
               258.00 , 0.00041192                                               
               258.50 , 0.00041440                                               
               259.00 , 0.00041692                                               
               259.50 , 0.00041946                                               
               260.00 , 0.00042205                                               
               260.50 , 0.00042466                                               
               261.00 , 0.00042732                                               
               261.50 , 0.00043001                                               
               262.00 , 0.00043273                                               
               262.50 , 0.00043549                                               
               263.00 , 0.00043829                                               
               263.50 , 0.00044113                                               
               264.00 , 0.00044400                                               
               264.50 , 0.00044693                                               
               265.00 , 0.00044989                                               
               265.50 , 0.00045289                                               
               266.00 , 0.00045593                                               
               266.50 , 0.00045901                                               
               267.00 , 0.00046214                                               
               267.50 , 0.00046530                                               
               268.00 , 0.00046851                                               
               268.50 , 0.00047177                                               
               269.00 , 0.00047507                                               
               269.50 , 0.00047841                                               
               270.00 , 0.00048180                                               
               270.50 , 0.00048523                                               
               271.00 , 0.00048871                                               
               271.50 , 0.00049224                                               
               272.00 , 0.00049582                                               
               272.50 , 0.00049944                                               
               273.00 , 0.00050311                                               
               273.50 , 0.00050684                                               
               274.00 , 0.00051061                                               
               274.50 , 0.00051444                                               
               275.00 , 0.00051831                                               
               275.50 , 0.00052224                                               
               276.00 , 0.00052623                                               
               276.50 , 0.00053026                                               
               277.00 , 0.00053436                                               
               277.50 , 0.00053850                                               
               278.00 , 0.00054272                                               
               278.50 , 0.00054699                                               
               279.00 , 0.00055132                                               
               279.50 , 0.00055571                                               
               280.00 , 0.00056017                                               
               280.50 , 0.00056468                                               
               281.00 , 0.00056925                                               
               281.50 , 0.00057389                                               
               282.00 , 0.00057859                                               
               282.50 , 0.00058335                                               
               283.00 , 0.00058818                                               
               283.50 , 0.00059308                                               
               284.00 , 0.00059806                                               
               284.50 , 0.00060310                                               
               285.00 , 0.00060822                                               
               285.50 , 0.00061340                                               
               286.00 , 0.00061866                                               
               286.50 , 0.00062400                                               
               287.00 , 0.00062941                                               
               287.50 , 0.00063489                                               
               288.00 , 0.00064046                                               
               288.50 , 0.00064610                                               
               289.00 , 0.00065182                                               
               289.50 , 0.00065763                                               
               290.00 , 0.00066352                                               
               290.50 , 0.00066949                                               
               291.00 , 0.00067555                                               
               291.50 , 0.00068170                                               
               292.00 , 0.00068793                                               
               292.50 , 0.00069426                                               
               293.00 , 0.00070068                                               
               293.50 , 0.00070719                                               
               294.00 , 0.00071380                                               
               294.50 , 0.00072051                                               
               295.00 , 0.00072731                                               
               295.50 , 0.00073421                                               
               296.00 , 0.00074122                                               
               296.50 , 0.00074833                                               
               297.00 , 0.00075554                                               
               297.50 , 0.00076286                                               
               298.00 , 0.00077029                                               
               298.50 , 0.00077783                                               
               299.00 , 0.00078548                                               
               299.50 , 0.00079325                                               
               300.00 , 0.00080114                                               
               300.50 , 0.00080914                                               
               301.00 , 0.00081726                                               
               301.50 , 0.00082551                                               
               302.00 , 0.00083388                                               
               302.50 , 0.00084238                                               
               303.00 , 0.00085100                                               
               303.50 , 0.00085976                                               
               304.00 , 0.00086864                                               
               304.25 , 0.00087309                                               
               304.50 , 0.00087548                                               
               305.00 , 0.00088020                                               
               305.50 , 0.00088294                                               
               306.00 , 0.00088511                                               
               306.50 , 0.00088721                                               
               307.00 , 0.00088925                                               
               307.50 , 0.00089121                                               
               308.00 , 0.00089312                                               
               308.50 , 0.00089495                                               
               309.00 , 0.00089673                                               
               309.50 , 0.00089845                                               
               310.00 , 0.00090011                                               
               310.50 , 0.00090171                                               
               311.00 , 0.00090326                                               
               311.50 , 0.00090476                                               
               312.00 , 0.00090620                                               
               312.50 , 0.00090759                                               
               313.00 , 0.00090894                                               
               313.50 , 0.00091023                                               
               313.65 , 0.00091060                                               
              4000.00 , 0.00091060                                               
            END                                                                  
  
  
  
 Cc                                                                              
 Cc                                                                              
 Cc Time (sec) vs T_sky (degF)                                                   
            7                                                                    
             -4000.0,-145.5                                                      
               0.0 , -145.5                                                      
               1.0 , -146.4                                                      
               2.0 , -147.2                                                      
               3.0 , -147.9                                                      
               4.0 , -148.6                                                      
               5.0 , -149.2                                                      
               6.0 , -149.7                                                      
               7.0 , -150.2                                                      
               8.0 , -150.7                                                      
               9.0 , -151.2                                                      
               10.0 , -151.7                                                     
               11.0 , -152.2                                                     
               12.0 , -152.8                                                     
               13.0 , -153.5                                                     
               14.0 , -154.2                                                     
               15.0 , -154.9                                                     
               16.0 , -155.8                                                     
               17.0 , -156.7                                                     
               18.0 , -157.8                                                     
               19.0 , -158.9                                                     
               20.0 , -160.1                                                     
               21.0 , -161.4                                                     
               22.0 , -162.8                                                     
               23.0 , -164.2                                                     
               24.0 , -165.8                                                     
               25.0 , -167.4                                                     
               26.0 , -169.1                                                     
               27.0 , -170.8                                                     
               28.0 , -172.7                                                     
               29.0 , -174.6                                                     
               30.0 , -176.4                                                     
               31.0 , -178.3                                                     
               32.0 , -180.2                                                     
               33.0 , -182.1                                                     
               34.0 , -184.2                                                     
               35.0 , -186.3                                                     
               36.0 , -188.5                                                     
               37.0 , -190.7                                                     
               38.0 , -193.0                                                     
               39.0 , -195.4                                                     
               40.0 , -197.8                                                     
               41.0 , -200.1                                                     
               42.0 , -202.4                                                     
               43.0 , -204.9                                                     
               44.0 , -207.4                                                     
               45.0 , -209.9                                                     
               46.0 , -212.6                                                     
               47.0 , -215.3                                                     
               48.0 , -217.9                                                     
               49.0 , -220.5                                                     
               50.0 , -223.1                                                     
               51.0 , -225.7                                                     
               52.0 , -228.5                                                     
               53.0 , -231.3                                                     
               54.0 , -234.1                                                     
               55.0 , -237.0                                                     
               56.0 , -240.0                                                     
               57.0 , -243.1                                                     
               58.0 , -246.2                                                     
               59.0 , -249.3                                                     
               60.0 , -252.6                                                     
               61.0 , -255.5                                                     
               62.0 , -258.5                                                     
               63.0 , -261.5                                                     
               64.0 , -264.6                                                     
               65.0 , -267.8                                                     
               66.0 , -269.9                                                     
               67.0 , -271.3                                                     
               68.0 , -272.8                                                     
               69.0 , -274.2                                                     
               70.0 , -275.7                                                     
               71.0 , -277.3                                                     
               72.0 , -278.8                                                     
               73.0 , -280.4                                                     
               74.0 , -282.0                                                     
               75.0 , -283.5                                                     
               76.0 , -285.0                                                     
               77.0 , -286.4                                                     
               78.0 , -287.9                                                     
               79.0 , -289.4                                                     
               80.0 , -290.9                                                     
               81.0 , -292.4                                                     
               82.0 , -294.0                                                     
               83.0 , -295.5                                                     
               84.0 , -296.8                                                     
               85.0 , -298.1                                                     
               86.0 , -299.5                                                     
               87.0 , -300.9                                                     
               88.0 , -302.3                                                     
               89.0 , -303.8                                                     
               90.0 , -305.2                                                     
               91.0 , -306.7                                                     
               92.0 , -308.2                                                     
               93.0 , -309.7                                                     
               94.0 , -311.2                                                     
               95.0 , -312.8                                                     
               96.0 , -314.3                                                     
               97.0 , -315.7                                                     
               98.0 , -317.0                                                     
               99.0 , -318.3                                                     
               100.0 , -319.6                                                    
               101.0 , -321.0                                                    
               102.0 , -322.3                                                    
               103.0 , -323.7                                                    
               104.0 , -325.1                                                    
               105.0 , -326.5                                                    
               106.0 , -327.9                                                    
               107.0 , -329.3                                                    
               108.0 , -330.8                                                    
               109.0 , -331.9                                                    
               110.0 , -333.0                                                    
               111.0 , -334.1                                                    
               112.0 , -335.3                                                    
               113.0 , -336.4                                                    
               114.0 , -337.6                                                    
               115.0 , -338.7                                                    
               116.0 , -339.9                                                    
               117.0 , -341.0                                                    
               118.0 , -342.1                                                    
               119.0 , -343.2                                                    
               120.0 , -344.3                                                    
               121.0 , -345.3                                                    
               122.0 , -346.4                                                    
               123.0 , -347.5                                                    
               124.0 , -348.6                                                    
               125.0 , -349.6                                                    
               126.0 , -350.7                                                    
               127.0 , -351.7                                                    
               128.0 , -352.8                                                    
               129.0 , -353.8                                                    
               130.0 , -354.7                                                    
               131.0 , -355.6                                                    
               132.0 , -356.5                                                    
               133.0 , -357.4                                                    
               134.0 , -358.3                                                    
               135.0 , -359.1                                                    
               136.0 , -360.0                                                    
               137.0 , -360.8                                                    
               138.0 , -361.7                                                    
               139.0 , -362.5                                                    
               140.0 , -363.4                                                    
               141.0 , -364.2                                                    
               142.0 , -365.0                                                    
               143.0 , -365.9                                                    
               144.0 , -366.6                                                    
               145.0 , -367.3                                                    
               146.0 , -367.9                                                    
               147.0 , -368.6                                                    
               148.0 , -369.3                                                    
               149.0 , -370.0                                                    
               150.0 , -370.6                                                    
               151.0 , -371.3                                                    
               152.0 , -372.0                                                    
               153.0 , -372.6                                                    
               154.0 , -373.3                                                    
               155.0 , -373.9                                                    
               156.0 , -374.6                                                    
               157.0 , -375.2                                                    
               158.0 , -375.8                                                    
               159.0 , -376.4                                                    
               160.0 , -376.9                                                    
               161.0 , -377.4                                                    
               162.0 , -377.9                                                    
               163.0 , -378.4                                                    
               164.0 , -378.9                                                    
               165.0 , -379.4                                                    
               166.0 , -379.9                                                    
               167.0 , -380.3                                                    
               168.0 , -380.8                                                    
               169.0 , -381.3                                                    
               170.0 , -381.8                                                    
               171.0 , -382.2                                                    
               172.0 , -382.7                                                    
               173.0 , -383.1                                                    
               174.0 , -383.6                                                    
               175.0 , -384.1                                                    
               176.0 , -384.5                                                    
               177.0 , -385.0                                                    
               178.0 , -385.4                                                    
               179.0 , -385.8                                                    
               180.0 , -386.3                                                    
               181.0 , -386.7                                                    
               182.0 , -387.1                                                    
               183.0 , -387.5                                                    
               184.0 , -388.0                                                    
               185.0 , -388.4                                                    
               186.0 , -388.8                                                    
               187.0 , -389.2                                                    
               188.0 , -389.6                                                    
               189.0 , -390.0                                                    
               190.0 , -390.4                                                    
               191.0 , -390.8                                                    
               192.0 , -391.2                                                    
               193.0 , -391.5                                                    
               194.0 , -391.9                                                    
               195.0 , -392.2                                                    
               196.0 , -392.5                                                    
               197.0 , -392.8                                                    
               198.0 , -393.0                                                    
               199.0 , -393.3                                                    
               200.0 , -393.6                                                    
               201.0 , -393.8                                                    
               202.0 , -394.1                                                    
               203.0 , -394.4                                                    
               204.0 , -394.6                                                    
               205.0 , -394.9                                                    
               206.0 , -395.1                                                    
               207.0 , -395.4                                                    
               208.0 , -395.6                                                    
               209.0 , -395.9                                                    
               210.0 , -396.1                                                    
               211.0 , -396.3                                                    
               212.0 , -396.6                                                    
               213.0 , -396.8                                                    
               214.0 , -397.0                                                    
               215.0 , -397.2                                                    
               216.0 , -397.5                                                    
               217.0 , -397.7                                                    
               218.0 , -397.9                                                    
               219.0 , -398.1                                                    
               220.0 , -398.3                                                    
               221.0 , -398.5                                                    
               222.0 , -398.7                                                    
               223.0 , -398.9                                                    
               224.0 , -399.1                                                    
               225.0 , -399.3                                                    
               226.0 , -399.5                                                    
               227.0 , -399.7                                                    
               228.0 , -399.9                                                    
               229.0 , -400.1                                                    
               230.0 , -400.3                                                    
               231.0 , -400.5                                                    
               232.0 , -400.7                                                    
               233.0 , -400.8                                                    
               234.0 , -401.0                                                    
               235.0 , -401.2                                                    
               236.0 , -401.4                                                    
               237.0 , -401.5                                                    
               238.0 , -401.7                                                    
               239.0 , -401.8                                                    
               240.0 , -402.0                                                    
               241.0 , -402.2                                                    
               242.0 , -402.3                                                    
               243.0 , -402.5                                                    
               244.0 , -402.6                                                    
               245.0 , -402.8                                                    
               246.0 , -402.9                                                    
               247.0 , -403.0                                                    
               248.0 , -403.2                                                    
               249.0 , -403.3                                                    
               250.0 , -403.5                                                    
               251.0 , -403.6                                                    
               252.0 , -403.7                                                    
               253.0 , -403.8                                                    
               254.0 , -404.0                                                    
               255.0 , -404.1                                                    
               256.0 , -404.2                                                    
               257.0 , -404.3                                                    
               258.0 , -404.3                                                    
               259.0 , -404.4                                                    
               260.0 , -404.5                                                    
               261.0 , -404.6                                                    
               262.0 , -404.7                                                    
               263.0 , -404.7                                                    
               264.0 , -404.8                                                    
               265.0 , -404.9                                                    
               266.0 , -405.0                                                    
               267.0 , -405.0                                                    
               268.0 , -405.1                                                    
               269.0 , -405.2                                                    
               270.0 , -405.2                                                    
               271.0 , -405.3                                                    
               272.0 , -405.4                                                    
               273.0 , -405.4                                                    
               274.0 , -405.5                                                    
               275.0 , -405.6                                                    
               276.0 , -405.6                                                    
               277.0 , -405.7                                                    
               278.0 , -405.7                                                    
               279.0 , -405.8                                                    
               280.0 , -405.8                                                    
               281.0 , -405.9                                                    
               282.0 , -405.9                                                    
               283.0 , -406.0                                                    
               284.0 , -406.0                                                    
               285.0 , -406.1                                                    
               286.0 , -406.1                                                    
               287.0 , -406.1                                                    
               288.0 , -406.2                                                    
               289.0 , -406.2                                                    
               290.0 , -406.3                                                    
               291.0 , -406.3                                                    
               292.0 , -406.3                                                    
               293.0 , -406.4                                                    
               294.0 , -406.4                                                    
               295.0 , -406.4                                                    
               296.0 , -406.5                                                    
               297.0 , -406.5                                                    
               298.0 , -406.5                                                    
               299.0 , -406.5                                                    
               300.0 , -406.6                                                    
               301.0 , -406.6                                                    
               302.0 , -406.6                                                    
               303.0 , -406.6                                                    
               304.0 , -406.7                                                    
               305.0 , -406.7                                                    
               306.0 , -406.7                                                    
               307.0 , -406.7                                                    
               308.0 , -406.7                                                    
               309.0 , -406.8                                                    
               310.0 , -406.8                                                    
               311.0 , -406.8                                                    
               312.0 , -406.8                                                    
               313.0 , -406.8                                                    
              4000.0 , -406.8                                                    
            END                                                                  
  
  
  
  
 Cc                                                                              
 Cc                                                                              
 Cc Time (sec) vs T_earth (degF)                                                 
            8                                                                    
             -4000.0,-11.6                                                       
               0.0 , -11.6                                                       
               1.0 , -12.1                                                       
               2.0 , -12.5                                                       
               3.0 , -12.9                                                       
               4.0 , -13.3                                                       
               5.0 , -13.6                                                       
               6.0 , -13.8                                                       
               7.0 , -14.1                                                       
               8.0 , -14.3                                                       
               9.0 , -14.5                                                       
               10.0 , -14.7                                                      
               11.0 , -15.0                                                      
               12.0 , -15.2                                                      
               13.0 , -15.5                                                      
               14.0 , -15.8                                                      
               15.0 , -16.2                                                      
               16.0 , -16.6                                                      
               17.0 , -17.0                                                      
               18.0 , -17.4                                                      
               19.0 , -17.9                                                      
               20.0 , -18.4                                                      
               21.0 , -19.0                                                      
               22.0 , -19.6                                                      
               23.0 , -20.3                                                      
               24.0 , -20.9                                                      
               25.0 , -21.6                                                      
               26.0 , -22.4                                                      
               27.0 , -23.2                                                      
               28.0 , -24.0                                                      
               29.0 , -24.8                                                      
               30.0 , -25.7                                                      
               31.0 , -26.6                                                      
               32.0 , -27.6                                                      
               33.0 , -28.6                                                      
               34.0 , -29.6                                                      
               35.0 , -30.6                                                      
               36.0 , -31.7                                                      
               37.0 , -32.8                                                      
               38.0 , -34.0                                                      
               39.0 , -35.2                                                      
               40.0 , -36.3                                                      
               41.0 , -37.4                                                      
               42.0 , -38.4                                                      
               43.0 , -39.5                                                      
               44.0 , -40.7                                                      
               45.0 , -41.8                                                      
               46.0 , -43.0                                                      
               47.0 , -44.2                                                      
               48.0 , -45.4                                                      
               49.0 , -46.3                                                      
               50.0 , -47.4                                                      
               51.0 , -48.4                                                      
               52.0 , -49.5                                                      
               53.0 , -50.5                                                      
               54.0 , -51.7                                                      
               55.0 , -52.7                                                      
               56.0 , -53.7                                                      
               57.0 , -54.7                                                      
               58.0 , -55.7                                                      
               59.0 , -56.8                                                      
               60.0 , -57.9                                                      
               61.0 , -58.6                                                      
               62.0 , -59.4                                                      
               63.0 , -60.1                                                      
               64.0 , -60.9                                                      
               65.0 , -61.7                                                      
               66.0 , -62.1                                                      
               67.0 , -62.3                                                      
               68.0 , -62.5                                                      
               69.0 , -62.7                                                      
               70.0 , -63.0                                                      
               71.0 , -63.2                                                      
               72.0 , -63.4                                                      
               73.0 , -63.6                                                      
               74.0 , -63.9                                                      
               75.0 , -64.1                                                      
               76.0 , -64.5                                                      
               77.0 , -64.9                                                      
               78.0 , -65.2                                                      
               79.0 , -65.6                                                      
               80.0 , -66.0                                                      
               81.0 , -66.4                                                      
               82.0 , -66.7                                                      
               83.0 , -67.1                                                      
               84.0 , -67.5                                                      
               85.0 , -67.9                                                      
               86.0 , -68.4                                                      
               87.0 , -68.8                                                      
               88.0 , -69.2                                                      
               89.0 , -69.6                                                      
               90.0 , -70.0                                                      
               91.0 , -69.7                                                      
               92.0 , -69.5                                                      
               93.0 , -69.3                                                      
               94.0 , -69.1                                                      
               95.0 , -68.8                                                      
               96.0 , -68.6                                                      
               97.0 , -68.4                                                      
               98.0 , -68.1                                                      
               99.0 , -67.9                                                      
               100.0 , -67.6                                                     
               101.0 , -67.4                                                     
               102.0 , -67.1                                                     
               103.0 , -66.4                                                     
               104.0 , -65.2                                                     
               105.0 , -64.0                                                     
               106.0 , -62.7                                                     
               107.0 , -61.5                                                     
               108.0 , -60.2                                                     
               109.0 , -58.0                                                     
               110.0 , -55.5                                                     
               111.0 , -53.0                                                     
               112.0 , -50.5                                                     
               113.0 , -48.0                                                     
               114.0 , -45.4                                                     
               115.0 , -42.8                                                     
               116.0 , -40.2                                                     
               117.0 , -38.2                                                     
               118.0 , -36.3                                                     
               119.0 , -34.3                                                     
               120.0 , -32.4                                                     
               121.0 , -30.5                                                     
               122.0 , -28.5                                                     
               123.0 , -26.6                                                     
               124.0 , -24.7                                                     
               125.0 , -22.8                                                     
               126.0 , -20.9                                                     
               127.0 , -19.0                                                     
               128.0 , -17.2                                                     
               129.0 , -15.3                                                     
               130.0 , -14.4                                                     
               131.0 , -13.6                                                     
               132.0 , -12.9                                                     
               133.0 , -12.2                                                     
               134.0 , -11.4                                                     
               135.0 , -10.7                                                     
               136.0 , -10.0                                                     
               137.0 , -9.3                                                      
               138.0 , -8.59                                                     
               139.0 , -7.89                                                     
               140.0 , -7.19                                                     
               141.0 , -6.49                                                     
               142.0 , -5.8                                                      
               143.0 , -5.11                                                     
               144.0 , -4.83                                                     
               145.0 , -4.62                                                     
               146.0 , -4.42                                                     
               147.0 , -4.21                                                     
               148.0 , -4.01                                                     
               149.0 , -3.81                                                     
               150.0 , -3.61                                                     
               151.0 , -3.41                                                     
               152.0 , -3.21                                                     
               153.0 , -3.02                                                     
               154.0 , -2.82                                                     
               155.0 , -2.62                                                     
               156.0 , -2.43                                                     
               157.0 , -2.24                                                     
               158.0 , -2.05                                                     
               159.0 , -2.0                                                      
               313.0 , -2.0                                                      
              4000.0 , -2.0                                                      
            END                                                                  
  
  
  
  
 Cc                                                                              
 Cc                                                                              
 Cc Time (sec) vs Q_solar (degF)                                                 
            9                                                                    
             -4000.0,410.0                                                       
               0.0 , 410.0                                                       
               1.0 , 410.0                                                       
               2.0 , 410.0                                                       
               3.0 , 410.0                                                       
               4.0 , 410.0                                                       
               5.0 , 410.0                                                       
               6.0 , 410.0                                                       
               7.0 , 410.0                                                       
               8.0 , 410.1                                                       
               9.0 , 410.1                                                       
               10.0 , 410.1                                                      
               11.0 , 410.2                                                      
               12.0 , 410.2                                                      
               13.0 , 410.3                                                      
               14.0 , 410.3                                                      
               15.0 , 410.4                                                      
               16.0 , 410.5                                                      
               17.0 , 410.5                                                      
               18.0 , 410.6                                                      
               19.0 , 410.7                                                      
               20.0 , 410.8                                                      
               21.0 , 410.9                                                      
               22.0 , 411.0                                                      
               23.0 , 411.1                                                      
               24.0 , 411.3                                                      
               25.0 , 411.4                                                      
               26.0 , 411.5                                                      
               27.0 , 411.7                                                      
               28.0 , 411.8                                                      
               29.0 , 412.0                                                      
               30.0 , 411.9                                                      
               31.0 , 411.7                                                      
               32.0 , 411.5                                                      
               33.0 , 411.4                                                      
               34.0 , 411.2                                                      
               35.0 , 411.0                                                      
               36.0 , 410.8                                                      
               37.0 , 410.6                                                      
               38.0 , 410.4                                                      
               39.0 , 410.1                                                      
               40.0 , 410.0                                                      
               41.0 , 409.8                                                      
               42.0 , 409.7                                                      
               43.0 , 409.6                                                      
               44.0 , 409.5                                                      
               45.0 , 409.4                                                      
               46.0 , 409.2                                                      
               47.0 , 409.1                                                      
               48.0 , 409.1                                                      
               49.0 , 409.4                                                      
               50.0 , 409.7                                                      
               51.0 , 410.0                                                      
               52.0 , 410.3                                                      
               53.0 , 410.6                                                      
               54.0 , 410.9                                                      
               55.0 , 411.3                                                      
               56.0 , 411.8                                                      
               57.0 , 412.3                                                      
               58.0 , 412.9                                                      
               59.0 , 413.4                                                      
               60.0 , 413.9                                                      
               61.0 , 414.3                                                      
               62.0 , 414.7                                                      
               63.0 , 415.1                                                      
               64.0 , 415.5                                                      
               65.0 , 415.8                                                      
               66.0 , 416.2                                                      
               67.0 , 416.5                                                      
               68.0 , 416.9                                                      
               69.0 , 417.2                                                      
               70.0 , 417.5                                                      
               71.0 , 417.9                                                      
               72.0 , 418.2                                                      
               73.0 , 418.6                                                      
               74.0 , 419.0                                                      
               75.0 , 419.3                                                      
               76.0 , 419.7                                                      
               77.0 , 420.1                                                      
               78.0 , 420.5                                                      
               79.0 , 420.9                                                      
               80.0 , 421.3                                                      
               81.0 , 421.7                                                      
               82.0 , 422.1                                                      
               83.0 , 422.5                                                      
               84.0 , 423.0                                                      
               85.0 , 423.4                                                      
               86.0 , 423.8                                                      
               87.0 , 424.1                                                      
               88.0 , 424.4                                                      
               89.0 , 424.6                                                      
               90.0 , 424.8                                                      
               91.0 , 425.1                                                      
               92.0 , 425.3                                                      
               93.0 , 425.5                                                      
               94.0 , 425.8                                                      
               95.0 , 426.0                                                      
               96.0 , 426.3                                                      
               97.0 , 426.5                                                      
               98.0 , 426.8                                                      
               99.0 , 427.1                                                      
               100.0 , 427.3                                                     
               101.0 , 427.6                                                     
               102.0 , 427.9                                                     
               103.0 , 428.1                                                     
               104.0 , 428.4                                                     
               105.0 , 428.7                                                     
               106.0 , 429.0                                                     
               107.0 , 429.3                                                     
               108.0 , 429.6                                                     
               109.0 , 429.8                                                     
               110.0 , 430.1                                                     
               111.0 , 430.4                                                     
               112.0 , 430.7                                                     
               113.0 , 431.0                                                     
               114.0 , 431.4                                                     
               115.0 , 431.7                                                     
               116.0 , 432.0                                                     
               117.0 , 432.1                                                     
               118.0 , 432.3                                                     
               119.0 , 432.5                                                     
               120.0 , 432.6                                                     
               121.0 , 432.8                                                     
               122.0 , 432.9                                                     
               123.0 , 433.1                                                     
               124.0 , 433.2                                                     
               125.0 , 433.4                                                     
               126.0 , 433.5                                                     
               127.0 , 433.7                                                     
               128.0 , 433.8                                                     
               129.0 , 434.0                                                     
               143.0 , 434.0                                                     
               144.0 , 434.1                                                     
               145.0 , 434.1                                                     
               146.0 , 434.2                                                     
               147.0 , 434.3                                                     
               148.0 , 434.3                                                     
               149.0 , 434.4                                                     
               150.0 , 434.5                                                     
               151.0 , 434.5                                                     
               152.0 , 434.6                                                     
               153.0 , 434.7                                                     
               154.0 , 434.7                                                     
               155.0 , 434.8                                                     
               156.0 , 434.9                                                     
               157.0 , 434.9                                                     
               158.0 , 435.0                                                     
               313.0 , 435.0                                                     
              4000.0 , 435.0                                                     
            END                                                                  
  
  
  
  
  
  
 Cc                                                                              
 Cc LOX Tank Interior Temperature Boundary Condition AL PLP VaPak: P_i = 200 psia, P_f = 14
 Cc Using LOX Sat Equi Temperatures at above pressures.                          
 Cc    Note:  0  to  135.74 sec.                                                 
 Cc                                                                              
 Cc Time (sec) vs Temperature (degF)                                             
            5                                                                    
             -4000.0,-233.98                                                     
                0.0, -233.98                                                     
             135.74, -245.44                                                     
             4000.0, -245.44                                                     
            END                                                                  
  
 Cc                                                                              
 Cc CH4 Tank Interior Temperature Boundary Condition AL PLP VaPak: P_i = 200 psia, P_f = 14
 Cc Using CH4 Sat Equi Temperatures at above pressures.                          
 Cc    Note:  0  to  135.74 sec.                                                 
 Cc                                                                              
 Cc Time (sec) vs Temperature (degF)                                             
            6                                                                    
             -4000.0,-177.99                                                     
                0.0, -177.99                                                     
             135.74, -192.60                                                     
             4000.0, -192.60                                                     
            END                                                                  
  
 C            -4000.0, 0.00                                                      
 CcC                0.0,      0.00,    50.0,     0.00,   125.0, 1.389E-2         
 CcC              150.0,  1.389E-2,   200.0, 6.944E-3,   325.0, 6.944E-3         
 CcC              390.0,  2.778E-2,   400.0, 2.778E-2,   505.0,     0.00         
 CcC             9000.0,      0.00,  9100.0, 2.083E-3,  9200.0, 1.042E-2         
 CcC             9300.0,  2.431E-2,  9400.0, 4.861E-2,  9500.0, 6.944E-2         
 CcC             9800.0,  6.944E-2, 10633.0,     0.00, 11500.0,     0.00         
 CcC           END                                                               
 CcC                                                                             
 CcC                                                                             
 CcC                                                                             
 CcC Inconel 617                                                                 
 CcC Density  0.302 lbm/in^3 @ Room Temperature                                  
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           111                                                                
 Cc               78.0, 0.100                                                    
 Cc              200.0, 0.104                                                    
 Cc              400.0, 0.111                                                    
 Cc              600.0, 0.117                                                    
 Cc              800.0, 0.124                                                    
 Cc             1000.0, 0.131                                                    
 Cc             1200.0, 0.137                                                    
 Cc             1400.0, 0.144                                                    
 Cc             1600.0, 0.150                                                    
 Cc             1800.0, 0.157                                                    
 Cc             2000.0, 0.163                                                    
 Cc           END                                                                
 CcC                                                                             
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Temperature (F)                                                            
 Cc           112                                                                
 Cc               78.0, 7.833                                                    
 Cc              200.0, 8.417                                                    
 Cc              400.0, 9.417                                                    
 Cc              600.0,10.417                                                    
 Cc              800.0,11.417                                                    
 Cc             1000.0,12.417                                                    
 Cc             1200.0,13.417                                                    
 Cc             1400.0,14.417                                                    
 Cc             1600.0,15.417                                                    
 Cc             1800.0,16.417                                                    
 Cc             2000.0,17.417                                                    
 Cc           END                                                                
 CcC                                                                             
 CcC Radiation Emissivity for coated Inconel 617 as a function of:               
 CcC  Temperature (F)                                                            
 Cc           115                                                                
 Cc             -400.0, 0.790,  -200.0, 0.790                                    
 Cc               70.0, 0.790,   200.0, 0.784                                    
 Cc              400.0, 0.775,   600.0, 0.765                                    
 Cc              800.0, 0.756,  1000.0, 0.747                                    
 Cc             1200.0, 0.737,  1400.0, 0.728                                    
 Cc             1600.0, 0.719,  1800.0, 0.709                                    
 Cc             2000.0, 0.700                                                    
 Cc           END                                                                
 CcC                                                                             
 CcC                                                                             
 CcC                                                                             
 CcC Haynes 230                                                                  
 CcC Source: www.haynesintl.com/230site/230pp.htm                                
 CcC Density  0.324 lbm/in^3 @ Room Temperature                                  
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           11                                                                 
 Cc             -260.0, 0.0841,   200.0, 0.0990,   400.0, 0.1040                 
 Cc              600.0, 0.1080,   800.0, 0.1120,  1000.0, 0.1230                 
 Cc             1200.0, 0.1340,  1400.0, 0.1400,  1600.0, 0.1450                 
 Cc             1800.0, 0.1470                                                   
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Temperature (F)                                                            
 Cc           12                                                                 
 Cc             -260.0,  4.00,   200.0,  5.92,   400.0,  7.25                    
 Cc              600.0,  8.50,   800.0,  9.83,  1000.0, 11.08                    
 Cc             1200.0, 12.33,  1400.0, 13.67,  1600.0, 14.92                    
 Cc             1800.0, 16.25                                                    
 Cc           END                                                                
 CcC Radiation Emissivity for uncoated Haynes 230 as a function of:              
 CcC  Temperature (F)                                                            
 Cc           14                                                                 
 Cc             -400.0, 0.629,  -200.0, 0.637,    70.0, 0.648                    
 Cc              100.0, 0.649,   200.0, 0.653,   300.0, 0.656                    
 Cc              400.0, 0.660,   500.0, 0.664,   600.0, 0.667                    
 Cc              700.0, 0.670,   800.0, 0.674,   900.0, 0.677                    
 Cc             1000.0, 0.680,  1100.0, 0.683,  1200.0, 0.686                    
 Cc             1300.0, 0.689,  1400.0, 0.692,  1500.0, 0.695                    
 Cc             1600.0, 0.697,  1700.0, 0.700,  1800.0, 0.702                    
 Cc             1900.0, 0.705,  2000.0, 0.707                                    
 Cc           END                                                                
 Cc                                                                              
 CcC Radiation Emissivity for coated Haynes 230 as a function of:                
 CcC  Temperature (F)                                                            
 Cc           15                                                                 
 Cc               70.0, 0.790,  2000.0, 0.700                                    
 Cc           END                                                                
 Cc                                                                              
 Cc           PHENOLIC CARBON                                                    
 Cc                                                                              
 Cc                  RANKINE    EMISSIVITY                                       
 Cc                     0.0      .80                                             
 Cc                  4460.0      .90                                             
 Cc                  10000.      .95                                             
 C Radiation Emissivity for PHENOLIC CARBON as a function of:                    
 C  Temperature (F)                                                              
            15                                                                   
              -460.0, 0.80,  4000.0, 0.90                                        
            END                                                                  
  
 CcC                                                                             
 CcC Haynes 214                                                                  
 CcC Source: www.haynesintl.com/214H3008C/214pp.htm                              
 CcC Density  0.291 lbm/in^3 @ Room Temperature                                  
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           21                                                                 
 Cc             -260.0, 0.0983,   200.0, 0.1120,   400.0, 0.1180                 
 Cc              600.0, 0.1240,   800.0, 0.1300,  1000.0, 0.1360                 
 Cc             1200.0, 0.1540,  1400.0, 0.1660,  1600.0, 0.1730                 
 Cc             1800.0, 0.1770,  1900.0, 0.1780,  2000.0, 0.1790                 
 Cc             2200.0, 0.1800                                                   
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Temperature (F)                                                            
 Cc           22                                                                 
 Cc             -260.0,  5.71,   200.0,  7.33,   400.0,  8.25                    
 Cc              600.0,  9.33,   800.0, 11.00,  1000.0, 12.75                    
 Cc             1200.0, 14.58,  1400.0, 16.67,  1600.0, 17.92                    
 Cc             1800.0, 18.75,  2000.0, 19.50,  2200.0, 21.25                    
 Cc           END                                                                
 CcC                                                                             
 CcC Saffil @ 6.0 pcf                                                            
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           31                                                                 
 Cc           -260.0, 0.103,    -5.0, 0.164,    31.0, 0.173,   211.0, 0.227      
 Cc            391.0, 0.244,   571.0, 0.261,   751.0, 0.272,   931.0, 0.280      
 Cc           1111.0, 0.286,  1291.0, 0.292,  1471.0, 0.296,  1651.0, 0.299      
 Cc           1831.0, 0.301,  2011.0, 0.303,  2191.0, 0.304                      
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Pressure (psia)                                                            
 CcC  Temperature (F)                                                            
 Cc           32                                                                 
 Cc             15                                                               
 Cc                  -260.0,    -5.0,    31.0,   211.0,   391.0                  
 Cc                   571.0,   751.0,   931.0,  1111.0,  1291.0                  
 Cc                  1471.0,  1651.0,  1831.0,  2011.0,  2191.0                  
 Cc             1.93E-6                                                          
 Cc                 6.26E-4, 1.25E-3, 1.36E-3, 2.32E-3, 4.05E-3                  
 Cc                 6.61E-3, 1.02E-2, 1.47E-2, 2.03E-2, 2.70E-2                  
 Cc                 3.50E-2, 4.41E-2, 5.44E-2, 6.65E-2, 7.95E-2                  
 Cc             9.67E-6                                                          
 Cc                 6.29E-4, 1.26E-3, 1.36E-3, 2.32E-3, 4.05E-3                  
 Cc                 6.61E-3, 1.02E-2, 1.47E-2, 2.03E-2, 2.70E-2                  
 Cc                 3.50E-2, 4.41E-2, 5.44E-2, 6.65E-2, 7.95E-2                  
 Cc             1.93E-5                                                          
 Cc                 6.31E-4, 1.26E-3, 1.37E-3, 2.33E-3, 4.06E-3                  
 Cc                 6.65E-3, 1.02E-2, 1.47E-2, 2.03E-2, 2.70E-2                  
 Cc                 3.50E-2, 4.41E-2, 5.44E-2, 6.65E-2, 7.95E-2                  
 Cc             9.67E-5                                                          
 Cc                 6.44E-4, 1.29E-3, 1.39E-3, 2.35E-3, 4.08E-3                  
 Cc                 6.65E-3, 1.02E-2, 1.47E-2, 2.03E-2, 2.70E-2                  
 Cc                 3.50E-2, 4.41E-2, 5.44E-2, 6.65E-2, 7.95E-2                  
 Cc             1.93E-4                                                          
 Cc                 6.61E-4, 1.32E-3, 1.43E-3, 2.38E-3, 4.11E-3                  
 Cc                 6.70E-3, 1.02E-2, 1.47E-2, 2.03E-2, 2.71E-2                  
 Cc                 3.50E-2, 4.41E-2, 5.49E-2, 6.65E-2, 7.95E-2                  
 Cc             9.67E-4                                                          
 Cc                 7.97E-4, 1.59E-3, 1.69E-3, 2.64E-3, 4.36E-3                  
 Cc                 6.91E-3, 1.04E-2, 1.49E-2, 2.06E-2, 2.73E-2                  
 Cc                 3.53E-2, 4.45E-2, 5.49E-2, 6.65E-2, 7.99E-2                  
 Cc             1.93E-3                                                          
 Cc                 9.59E-4, 1.92E-3, 2.01E-3, 2.94E-3, 4.67E-3                  
 Cc                 7.21E-3, 1.07E-2, 1.52E-2, 2.08E-2, 2.76E-2                  
 Cc                 3.55E-2, 4.45E-2, 5.53E-2, 6.70E-2, 7.99E-2                  
 Cc             9.67E-3                                                          
 Cc                 2.00E-3, 4.00E-3, 4.10E-3, 5.05E-3, 6.74E-3                  
 Cc                 9.29E-3, 1.27E-2, 1.72E-2, 2.28E-2, 2.95E-2                  
 Cc                 3.74E-2, 4.67E-2, 5.70E-2, 6.87E-2, 8.16E-2                  
 Cc             0.019                                                            
 Cc                 2.87E-3, 5.75E-3, 5.92E-3, 7.00E-3, 8.81E-3                  
 Cc                 1.14E-2, 1.49E-2, 1.94E-2, 2.50E-2, 3.17E-2                  
 Cc                 3.95E-2, 4.88E-2, 5.92E-2, 7.08E-2, 8.38E-2                  
 Cc             0.097                                                            
 Cc                 5.27E-3, 1.05E-2, 1.10E-2, 1.35E-2, 1.65E-2                  
 Cc                 2.00E-2, 2.41E-2, 2.92E-2, 3.52E-2, 4.22E-2                  
 Cc                 5.05E-2, 5.96E-2, 7.04E-2, 8.21E-2, 9.50E-2                  
 Cc             0.190                                                            
 Cc                 5.96E-3, 1.19E-2, 1.26E-2, 1.59E-2, 1.96E-2                  
 Cc                 2.38E-2, 2.87E-2, 3.43E-2, 4.09E-2, 4.84E-2                  
 Cc                 5.70E-2, 6.65E-2, 7.78E-2, 8.94E-2, 1.03E-1                  
 Cc             0.970                                                            
 Cc                 6.72E-3, 1.34E-2, 1.43E-2, 1.86E-2, 2.35E-2                  
 Cc                 2.89E-2, 3.51E-2, 4.20E-2, 4.97E-2, 5.88E-2                  
 Cc                 6.83E-2, 7.91E-2, 9.12E-2, 1.04E-1, 1.18E-1                  
 Cc             1.930                                                            
 Cc                 6.83E-3, 1.37E-2, 1.45E-2, 1.90E-2, 2.41E-2                  
 Cc                 2.98E-2, 3.62E-2, 4.36E-2, 5.14E-2, 6.05E-2                  
 Cc                 7.08E-2, 8.16E-2, 9.42E-2, 1.08E-1, 1.22E-1                  
 Cc             9.670                                                            
 Cc                 6.91E-3, 1.38E-2, 1.47E-2, 1.94E-2, 2.46E-2                  
 Cc                 3.05E-2, 3.72E-2, 4.45E-2, 5.31E-2, 6.22E-2                  
 Cc                 7.26E-2, 8.42E-2, 9.68E-2, 1.10E-1, 1.25E-1                  
 Cc             14.70                                                            
 Cc                 6.91E-3, 1.38E-2, 1.47E-2, 1.94E-2, 2.47E-2                  
 Cc                 3.06E-2, 3.73E-2, 4.49E-2, 5.31E-2, 6.26E-2                  
 Cc                 7.30E-2, 8.42E-2, 9.68E-2, 1.11E-1, 1.25E-1                  
 Cc           END                                                                
 CcC                                                                             
 CcccC Airex  10/07/02                                                           
 CcC        Known Airex Data:                                                    
 CcC                         3.75 pcf                                            
 CcC                                                                             
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           41                                                                 
 Cc           -460.0, 0.000,  -433.0, 0.011,  -400.0, 0.025,  -200.0, 0.110      
 Cc              0.0, 0.195,   200.0, 0.279,   400.0, 0.364,   428.0, 0.416      
 Cc            572.0, 0.468                                                      
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Pressure (atm)                                                             
 CcC  Temperature (F)                                                            
 Cc           42                                                                 
 Cc             9                                                                
 Cc                  -460.0,  -360.0,  -260.0,  -160.0,   -60.0                  
 Cc                    40.0,   140.0,   240.0,   340.0                           
 Cc             1.361E-8                                                         
 Cc                 9.34E-4, 1.01E-3, 1.14E-3, 1.29E-3, 1.49E-3                  
 Cc                 1.71E-3, 1.94E-3, 2.18E-3, 2.43E-3                           
 Cc             1.361E-6                                                         
 Cc                 1.38E-3, 1.50E-3, 1.69E-3, 1.92E-3, 2.21E-3                  
 Cc                 2.53E-3, 2.87E-3, 3.22E-3, 3.59E-3                           
 Cc             1.361E-3                                                         
 Cc                 5.35E-3, 5.79E-3, 6.52E-3, 7.41E-3, 8.54E-3                  
 Cc                 9.76E-3, 1.11E-2, 1.25E-2, 1.39E-2                           
 Cc             1.361E-2                                                         
 Cc                 6.40E-3, 6.93E-3, 7.81E-3, 8.86E-3, 1.02E-2                  
 Cc                 1.17E-2, 1.33E-2, 1.49E-2, 1.66E-2                           
 Cc             1.00                                                             
 Cc                 1.09E-2, 1.18E-2, 1.33E-2, 1.51E-2, 1.74E-2                  
 Cc                 1.99E-2, 2.26E-2, 2.54E-2, 2.83E-2                           
 Cc           END                                                                
 C                                                                               
 C IM7/977-2   Data from S. McCleskey  09/21/01                                  
 C Specific Heat (Btu/lbm-R) as a function of:                                   
 C  Temperature (F)                                                              
            51                                                                   
               -430.0, 0.010, -300.0, 0.049, -100.0, 0.132                       
                100.0, 0.208,  300.0, 0.277,  500.0, 0.350                       
            END                                                                  
 C Thermal Conductivity (Btu/hr-ft-R) normal to the plane                        
 C as a function of: Temperature (F)                                             
            52                                                                   
               -430.0, 0.05, -290.0, 0.21, -150.0, 0.33                          
                -50.0, 0.40,  100.0, 0.49,  200.0, 0.53                          
                300.0, 0.57                                                      
            END                                                                  
 C Thermal Conductivity (Btu/hr-ft-R) parallel to the plane                      
 C as a function of: Temperature (F)                                             
            53                                                                   
               -430.0, 0.07, -290.0, 0.86, -150.0, 1.79                          
                -50.0, 2.35,  100.0, 3.00,  200.0, 3.28                          
                300.0, 3.50                                                      
            END                                                                  
 CcC                                                                             
 CcC Titanium 6A1-4V                                                             
 CcC Source: TPSX  (NASA JSC PathFinder Materials                                
 CcC         Note: Extrapolated 2000F point FDP 10/10/02                         
 CcC Density  277.0 lbm/ft^3                                                     
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           61                                                                 
 Cc             -400.0, 0.012,   -200.0, 0.096,      0.0, 0.125                  
 Cc              200.0, 0.136,    400.0, 0.138,    600.0, 0.144                  
 Cc              800.0, 0.153,   1000.0, 0.167,   1200.0, 0.182                  
 Cc             1400.0, 0.205,   1600.0, 0.167,   2000.0, 0.265                  
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Temperature (F)                                                            
 Cc           62                                                                 
 Cc             -400.0,  1.200,   -200.0,  3.400,      0.0,  4.000               
 Cc              200.0,  4.298,    400.0,  5.000,    600.0,  6.001               
 Cc              800.0,  6.901,   1000.0,  7.898,   1200.0,  8.600               
 Cc             1400.0,  9.601,   1600.0, 10.400,   2000.0, 12.150               
 Cc           END                                                                
 CcC                                                                             
 CcC Air                                                                         
 CcC                                                                             
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC Temperature (F)                                                             
 Cc           71                                                                 
 Cc              -440.0, 0.245, -318.0, 0.245, -280.0, 0.245                     
 Cc              -190.0, 0.241, -100.0, 0.240,  -10.0, 0.240                     
 Cc                80.0, 0.240,  170.0, 0.241,  260.0, 0.242                     
 Cc               350.0, 0.244,  440.0, 0.246,  530.0, 0.248                     
 Cc               620.0, 0.252,  800.0, 0.257,  980.0, 0.262                     
 Cc              1160.0, 0.268, 1340.0, 0.273, 1520.0, 0.277                     
 Cc              1700.0, 0.282, 1880.0, 0.286, 2060.0, 0.290                     
 Cc           END                                                                
 CcC                                                                             
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC Temperature (F)                                                             
 CcC Note:  Values in table 52 are modified in the Variables 1                   
 CcC        section.  Any changes to this table must be reflected                
 CcC        in the Variables 1 code.                                             
 Cc           72                                                                 
 Cc             26                                                               
 Cc                  -350.0,  -325.0,  -300.0,  -200.0,  -100.0                  
 Cc                     0.0,   100.0,   200.0,   300.0,   400.0                  
 Cc                   500.0,   600.0,   700.0,   800.0,   900.0                  
 Cc                  1000.0,  1100.0,  1200.0,  1300.0,  1400.0                  
 Cc                  1500.0,  1600.0,  1700.0,  1800.0,  1900.0                  
 Cc                  2000.0                                                      
 Cc             4.726E-9                                                         
 Cc                    0.00, 4.32E-6, 4.33E-6, 4.29E-6, 4.22E-6                  
 Cc                 4.13E-6, 4.04E-6, 3.95E-6, 3.86E-6, 3.78E-6                  
 Cc                 3.70E-6, 3.62E-6, 3.54E-6, 3.47E-6, 3.41E-6                  
 Cc                 3.34E-6, 3.29E-6, 3.23E-6, 3.18E-6, 3.14E-6                  
 Cc                 3.10E-6, 3.06E-6, 3.03E-6, 3.00E-6, 2.97E-6                  
 Cc                 2.95E-6                                                      
 Cc             4.726E-8                                                         
 Cc                    0.00, 4.28E-5, 4.29E-5, 4.27E-5, 4.20E-5                  
 Cc                 4.12E-5, 4.03E-5, 3.94E-5, 3.86E-5, 3.77E-5                  
 Cc                 3.69E-5, 3.61E-5, 3.54E-5, 3.47E-5, 3.40E-5                  
 Cc                 3.34E-5, 3.28E-5, 3.23E-5, 3.18E-5, 3.14E-5                  
 Cc                 3.09E-5, 3.06E-5, 3.03E-5, 3.00E-5, 2.97E-5                  
 Cc                 2.95E-5                                                      
 Cc             4.726E-7                                                         
 Cc                    0.00, 3.90E-4, 3.97E-4, 4.07E-4, 4.06E-4                  
 Cc                 4.01E-4, 3.94E-4, 3.87E-4, 3.79E-4, 3.72E-4                  
 Cc                 3.64E-4, 3.57E-4, 3.50E-4, 3.43E-4, 3.37E-4                  
 Cc                 3.31E-4, 3.26E-4, 3.21E-4, 3.16E-4, 3.11E-4                  
 Cc                 3.07E-4, 3.04E-4, 3.01E-4, 2.98E-4, 2.96E-4                  
 Cc                 2.94E-4                                                      
 Cc             4.726E-6                                                         
 Cc                    0.00, 2.08E-3, 2.27E-3, 2.76E-3, 3.01E-3                  
 Cc                 3.14E-3, 3.21E-3, 3.24E-3, 3.24E-3, 3.23E-3                  
 Cc                 3.21E-3, 3.18E-3, 3.15E-3, 3.12E-3, 3.08E-3                  
 Cc                 3.04E-3, 3.01E-3, 2.97E-3, 2.94E-3, 2.91E-3                  
 Cc                 2.88E-3, 2.86E-3, 2.84E-3, 2.82E-3, 2.80E-3                  
 Cc                 2.79E-3                                                      
 Cc             4.726E-5                                                         
 Cc                    0.00, 3.68E-3, 4.30E-3, 6.53E-3, 8.39E-3                  
 Cc                 9.96E-3, 1.13E-2, 1.24E-2, 1.33E-2, 1.41E-2                  
 Cc                 1.47E-2, 1.53E-2, 1.58E-2, 1.62E-2, 1.65E-2                  
 Cc                 1.68E-2, 1.70E-2, 1.73E-2, 1.75E-2, 1.76E-2                  
 Cc                 1.78E-2, 1.80E-2, 1.81E-2, 1.83E-2, 2.84E-2                  
 Cc                 1.86E-2                                                      
 Cc             4.726E-4                                                         
 Cc                    0.00, 3.98E-3, 4.73E-3, 7.57E-3, 1.02E-2                  
 Cc                 1.27E-2, 1.50E-2, 1.72E-2, 1.93E-2, 2.12E-2                  
 Cc                 2.30E-2, 2.47E-2, 2.63E-2, 2.78E-2, 2.92E-2                  
 Cc                 3.06E-2, 3.20E-2, 3.32E-2, 3.45E-2, 3.57E-2                  
 Cc                 3.69E-2, 3.81E-2, 3.93E-2, 4.05E-2, 4.17E-2                  
 Cc                 4.29E-2                                                      
 Cc             4.726E-3                                                         
 Cc                    0.00, 4.02E-3, 4.77E-3, 7.69E-3, 1.05E-2                  
 Cc                 1.31E-2, 1.56E-2, 1.79E-2, 2.02E-2, 2.23E-2                  
 Cc                 2.43E-2, 2.63E-2, 2.82E-2, 3.00E-2, 3.17E-2                  
 Cc                 3.34E-2, 3.50E-2, 3.66E-2, 3.82E-2, 3.98E-2                  
 Cc                 4.13E-2, 4.29E-2, 4.45E-2, 4.61E-2, 4.77E-2                  
 Cc                 4.94E-2                                                      
 Cc             4.726E-2                                                         
 Cc                    0.00, 4.02E-3, 4.78E-3, 7.70E-3, 1.05E-2                  
 Cc                 1.31E-2, 1.56E-2, 1.80E-2, 2.03E-2, 2.24E-2                  
 Cc                 2.45E-2, 2.65E-2, 2.84E-2, 3.02E-2, 3.20E-2                  
 Cc                 3.37E-2, 3.54E-2, 3.70E-2, 3.86E-2, 4.02E-2                  
 Cc                 4.19E-2, 4.35E-2, 4.51E-2, 4.67E-2, 4.84E-2                  
 Cc                 5.01E-2                                                      
 Cc             4.726E-1                                                         
 Cc                    0.00, 4.02E-3, 4.78E-3, 7.70E-3, 1.05E-2                  
 Cc                 1.31E-2, 1.56E-2, 1.80E-2, 2.03E-2, 2.24E-2                  
 Cc                 2.45E-2, 2.65E-2, 2.84E-2, 3.02E-2, 3.20E-2                  
 Cc                 3.37E-2, 3.54E-2, 3.71E-2, 3.87E-2, 4.03E-2                  
 Cc                 4.19E-2, 4.35E-2, 4.51E-2, 4.68E-2, 4.85E-2                  
 Cc                 5.02E-2                                                      
 Cc             1.00                                                             
 Cc                    0.00, 4.02E-3, 4.78E-3, 7.70E-3, 1.05E-2                  
 Cc                 1.31E-2, 1.56E-2, 1.80E-2, 2.03E-2, 2.24E-2                  
 Cc                 2.45E-2, 2.65E-2, 2.84E-2, 3.02E-2, 3.20E-2                  
 Cc                 3.37E-2, 3.54E-2, 3.71E-2, 3.87E-2, 4.03E-2                  
 Cc                 4.19E-2, 4.35E-2, 4.51E-2, 4.68E-2, 4.85E-2                  
 Cc                 5.02E-2                                                      
 Cc           END                                                                
 C                                                                               
 C Korex Arimid Paper  10/03/01                                                  
 C  Note: The Korex thermal properties have been estimated by                    
 C        applying ratio to the IM7/977-2 data.                                  
 C           Cp = 0.33 BTU/lbm F @ 70F                                           
 C            k = 0.26 BTU/hr-ft-R @ -100F  normal to plane                      
 C            k = 0.54 BTU/hr-ft-R @ -100F  parallel to plane                    
 C                                                                               
 C Specific Heat (Btu/lbm-R) as a function of:                                   
 C Temperature (F)                                                               
            81                                                                   
               -430.0, 0.017, -300.0, 0.082, -100.0, 0.222                       
                100.0, 0.349,  300.0, 0.465                                      
            END                                                                  
 C Thermal Conductivity (Btu/hr-ft-R) normal to the plane                        
 C as a function of: Temperature (F)                                             
            82                                                                   
               -430.0, 0.036, -290.0, 0.145, -150.0, 0.235                       
                -50.0, 0.285,  100.0, 0.349,  200.0, 0.378                       
                300.0, 0.406                                                     
            END                                                                  
 C Thermal Conductivity (Btu/hr-ft-R) parallel to the plane                      
 C as a function of: Temperature (F)                                             
            83                                                                   
               -430.0, 0.036, -290.0, 0.224, -150.0, 0.467                       
                -50.0, 0.613,  100.0, 0.783,  200.0, 0.856                       
                300.0, 0.913                                                     
            END                                                                  
 CcC                                                                             
 CcC Hydrogen                                                                    
 CcC Source: Heat Transfer by J. P. Holman                                       
 CcC                                                                             
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC Temperature (F)                                                             
 Cc           91                                                                 
 Cc              -440.0, 1.937, -423.0, 2.263, -410.0, 2.362, -360.0, 2.551      
 Cc              -310.0, 2.871, -260.0, 3.411, -210.0, 3.800, -190.0, 3.861      
 Cc              -100.0, 3.839,  -10.0, 3.662,   80.0, 3.543,  170.0, 3.507      
 Cc               260.0, 3.472,  350.0, 3.463,  440.0, 3.465,  530.0, 3.471      
 Cc           END                                                                
 CcC                                                                             
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC Temperature (F)                                                             
 Cc           92                                                                 
 Cc              -440.0, 5.11E-3, -423.0, 9.77E-3, -410.0, 1.33E-2               
 Cc              -360.0, 2.37E-2, -310.0, 3.39E-2, -260.0, 4.38E-2               
 Cc              -210.0, 5.34E-2, -190.0, 5.67E-2, -100.0, 7.41E-2               
 Cc               -10.0, 9.02E-2,   80.0, 1.05E-1,  170.0, 1.19E-1               
 Cc               260.0, 1.32E-1,  350.0, 1.45E-1,  440.0, 1.57E-1               
 Cc               530.0, 1.69E-1                                                 
 Cc           END                                                                
 CcC                                                                             
 CcC Rho (lbm/ft^3) * Specific Heat (Btu/lbm R) as a function of:                
 CcC Temperature (F)                                                             
 Cc           94                                                                 
 Cc              -440.0, 1.617E-1, -423.0, 1.890E-1, -410.0, 1.098E-1            
 Cc              -360.0, 7.224E-2, -310.0, 5.280E-2, -260.0, 4.683E-2            
 Cc              -210.0, 4.157E-2, -190.0, 3.915E-2, -100.0, 2.945E-2            
 Cc               -10.0, 2.248E-2,   80.0, 1.810E-2,  170.0, 1.536E-2            
 Cc               260.0, 1.330E-2,  350.0, 1.181E-2,  440.0, 1.064E-2            
 Cc               530.0, 9.684E-3                                                
 Cc           END                                                                
 CcC                                                                             
 CcC SIP                                                                         
 CcC Specific Heat (Btu/lbm-R) as a function of:                                 
 CcC  Temperature (F)                                                            
 Cc           101                                                                
 Cc              -60.0, 3.091E-01, -17.9, 3.111E-01,  24.2, 3.130E-01            
 Cc               66.3, 3.147E-01, 108.4, 3.163E-01, 150.5, 3.180E-01            
 Cc              192.6, 3.197E-01, 234.7, 3.226E-01, 276.8, 3.258E-01            
 Cc              318.9, 3.289E-01, 361.1, 3.321E-01, 403.2, 3.352E-01            
 Cc              445.3, 3.373E-01, 487.4, 3.394E-01, 529.5, 3.415E-01            
 Cc              571.6, 3.436E-01, 613.7, 3.450E-01, 655.8, 3.450E-01            
 Cc              697.9, 3.450E-01, 740.0, 3.450E-01                              
 Cc           END                                                                
 CcC Thermal Conductivity (Btu/hr-ft-R) as a function of:                        
 CcC  Pressure (atm)                                                             
 CcC  Temperature (F)                                                            
 Cc           102                                                                
 Cc             8                                                                
 Cc                    -250.0,       0.0,     100.0,     200.0,     300.0        
 Cc                     400.0,     600.0,     800.0                              
 Cc             1.000E-04                                                        
 Cc                 4.800E-03, 5.300E-03, 5.700E-03, 6.300E-03, 7.300E-03        
 Cc                 9.100E-03, 1.200E-02, 1.560E-02                              
 Cc             1.000E-03                                                        
 Cc                 8.000E-03, 1.100E-02, 1.240E-02, 1.350E-02, 1.520E-02        
 Cc                 1.680E-02, 2.050E-02, 2.500E-02                              
 Cc             1.000E-02                                                        
 Cc                 9.800E-03, 1.780E-02, 2.080E-02, 2.400E-02, 2.720E-02        
 Cc                 3.030E-02, 3.900E-02, 5.000E-02                              
 Cc             1.000E-01                                                        
 Cc                 1.030E-02, 1.980E-02, 2.350E-02, 2.730E-02, 3.180E-02        
 Cc                 3.710E-02, 4.800E-02, 6.080E-02                              
 Cc             1.000E+00                                                        
 Cc                 1.070E-02, 2.050E-02, 2.440E-02, 2.850E-02, 3.300E-02        
 Cc                 3.820E-02, 4.930E-02, 6.200E-02                              
 Cc           END                                                                
        END                                                                      

  ARRAY ANALYSIS - NUMBER OF ARRAYS =     15,  TOTAL LENGTH =      5197

                                   ACTUAL ARRAY NUMBERS VERSUS FORTRAN ADDRESSES

 A      2=A(      1), A      3=A(   1278), A      4=A(   2555), A      7=A(   3832), A      8=A(   4465), A      9=A(   4792)
 A      5=A(   5091), A      6=A(   5100), A     15=A(   5109), A     51=A(   5114), A     52=A(   5127), A     53=A(   5142)
 A     81=A(   5157), A     82=A(   5168), A     83=A(   5183), A
 
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

 *** NOTE: SEGMENT SIZE =    33333284 - INFO ONLY

 *** PSEUDO COMPUTE SEQUENCE 1 LENGTH IS      97, PSEUDO COMPUTE SEQUENCE 2 LENGTH IS      45, TOTAL IS      142
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3EXECUTION                                                           
            SNDUFR                                                               
        END                                                                      
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3VARIABLES 1                                                         
 CcC                                                                             
 CcC        Turn off the natural convection during the flight.                   
 CcC        Assume 1 BTU/hr ft**2 = 1.929E-6 BTU/sec in**2                       
 CcC        G(1) = Area * h = (19.0*19.0) * 1.929E-6                             
 CcCM     IF( TIMEN .GE.    50.0 )  G(1) = 0.0                                   
 M     IF( TIMEN .GE.    0.0 )  G(1) = 0.0                                       
 CcM      G(1) = 0.0                                                             
 CcCM     IF( TIMEN .GE. 10933.0 )  G(1) = 6.964E-4                              
 CcC                                                                             
 CcC        Turn off the connection to the fuel boundary node after the ascent.  
 CcCM     IF( TIMEN .GT. 1200.0 )  XK15201 = 0.0                                 
 CcC                                                                             
 CcC        Allow air conduction during ascent and descent.                      
 CcCF     IF( TIMEN .GE. 1200.0  .AND.  TIMEN .LE. 9000.0 )  THEN                
 CcCM        XK3000  = 0.0                                                       
 CcCM        XK11100 = 0.0                                                       
 CcCF     ELSE                                                                   
 CcM        XK3000  = 3.343E-2                                                   
 CcM        XK11100 = 0.015                                                      
 CcCF     ENDIF                                                                  
 CcC                                                                             
        END                                                                      
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3VARIABLES 2                                                         
        END                                                                      
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3OUTPUT CALLS                                                        
            TPRINT                                                               
            QNPRNT                                                               
 C           GPRINT                                                              
 C           QFPRNT                                                              
 C           KPRINT                                                              
            ADTPRT                                                               
 F     END                                                                       
 F     SUBROUTINE ADTPRT                                                         
 C                                                                               
 C     Purpose - Print specific parameters in a seperate file.                   
 C                                                                               
 F     COMMON /FIXCON/                                                           
 F    +TIMEN ,DTIMEU,TIMEND,CSGFAC,NLOOP ,DTMPCA,ITROUT,DTIMEH,                  
 F    +DAMPA ,DAMPD ,ATMPCA,BACKUP,TIMEO ,TIMEM ,DTMPCC,ATMPCC,                  
 F    +CSGMIN,OUTPUT,ARLXCA,LOOPCT,DTIMEL,DTIMEI,CSGMAX,CSGRAL,                  
 F    +CSGRCL,DRLXCA,DRLXCC,NLINE ,NPAGE ,ARLXCC,LSPCS ,ENGBAL,                  
 F    +BALENG,ATSLIM,NCSGMN,NDTMPC,NARLXC,NATMPC,ITEST ,JTEST ,                  
 F    +KTEST ,LTEST ,MTEST ,RTEST ,STEST ,TTEST ,UTEST ,VTEST ,                  
 F    +LAXFAC,SIGMA ,TMPZRO,NDRLXC,TDERV ,NTDERV,BENODE,EBNODE,                  
 F    +NODEEB,EXTLIM,NFLOOP,PRLXCA,PRLXCC,LOOPFC,GRVCON,PZERO ,                  
 F    +NCSGMX,NTEST ,ATEST ,BTEST ,CTEST ,DTEST ,ETEST ,FTEST ,                  
 F    +GTEST ,HTEST ,OTEST ,PTEST ,QTEST ,WTEST ,XTEST ,YTEST ,                  
 F    +ZTEST ,NTROSS,ISNUNC,NLINPP,LOTEMP,ERRMAX,ERRMIN,SENGIN,                  
 F    +DBLPRC,MPCNTL,IPCNT1,IPCNT2,ATSLM1,NLOOP1,JDIFQ ,KMAX  ,                  
 F    +FRACHG,EPS   ,PRSABS,PRSREL,FLOABS,FLOREL,FLOMAX,PRANGE,                  
 F    +ISOLVE,NPASS ,DEFLIM,ICHECK,GRAV  ,GC1   ,GC2   ,USRFLO,                  
 F    +PMPTOL,DEBUGF,NOFERR,SPARE0,SPARE1,SPARE2,SPARE3,SPARE4,                  
 F    +SPARE5,SPARE6,SPARE7,SPARE8,SPARE9                                        
 C                                                                               
 F     COMMON /  TEMP/   T(1)                                                    
 C                                                                               
 C        Set up the print loop, and open the ASCII output file.                 
 CF     OPEN( 88, FILE = "TAPE88", ACCESS = "APPEND")                            
 F     OPEN( 88, FILE = "output.out", ACCESS = "APPEND")                         
 C                                                                               
 CcM     WRITE( 88,"(' ', 9F10.3)") TIMEN,                                       
 CcM    :                 T(1000), T(1001), T(1100), T(2000),                    
 CcM    :                 T(3000), T(4001), T(5000), T(6000)                     
 M     WRITE( 88,"(' ', 9F10.3)") TIMEN,                                         
 M    :                 T(5000), T(5001), T(5100), T(5101),                      
 M    :                 T(5200), T(5201), T(6000), T(3)                          
 C                                                                               
 F     CLOSE(88)                                                                 
 C                                                                               
 F     RETURN                                                                    
 C     END                                                                       
        END                                                                      
(C) COPYRIGHT 1982-2006 J.D.GASKI SINDA/G VERSION-2.5.000 - NETWORK ANALYSIS, INC.
  AL PLP Proposal Study (For Jim Berry, 07/17/08)       Modified by A.Carl: (From: SAMTAV Task Order 9  06/24            

        BCD 3END OF DATA                                                         

                        *** SUCCESSFUL SINDA/G VERSION-2.50  PREPROCESS ***
                                             *** CONGRATULATIONS, PROCEED TO THE COMPILER ***


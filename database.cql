//Creating airports
CREATE (WAW:Airport {code: 'WAW', name: 'Lotnisko Chopina', city: 'Warszawa', country: 'Polska', runways: 2, timezone: 'UTC+2'})
CREATE (JFK:Airport {code: 'JFK', name: 'John F. Kennedy International Airport', city: 'New York', country: 'USA', runways: 4, timezone: 'UTC-4'})
CREATE (SXF:Airport {code: 'SXF', name: 'Berlin Schönefeld Airport', city: 'Berlin', country: 'Niemcy', runways: 2, timezone: 'UTC+2'})
CREATE (CDG:Airport {code: 'CDG', name: 'Charles de Gaulle Airport', city: 'Paryż', country: 'Francja', runways: 4, timezone: 'UTC+2'})
CREATE (LHR:Airport {code: 'LHR', name: 'Heathrow Airport', city: 'Londyn', country: 'Wielka Brytania', runways: 2, timezone: 'UTC+1'})
CREATE (DUB:Airport {code: 'DUB', name: 'Dublin Airport', city: 'Dublin', country: 'Irlandia', runways: 3, timezone: 'UTC+1'})
CREATE (YYZ:Airport {code: 'YYZ', name: 'Toronto Pearson International Airport', city: 'Toronto', country: 'Kanada', runways: 5, timezone: 'UTC-4'})
CREATE (SYD:Airport {code: 'SYD', name: 'Sydney Airport', city: 'Sydney', country: 'Australia', runways: 3, timezone: 'UTC+10'})
CREATE (NRT:Airport {code: 'NRT', name: 'Narita International Airport', city: 'Tokio', country: 'Japonia', runways: 2, timezone: 'UTC+9'})
CREATE (DXB:Airport {code: 'DXB', name: 'Dubai International Airport', city: 'Dubaj', country: 'Zjednoczone Emiraty Arabskie', runways: 2, timezone: 'UTC+4'})
CREATE (GRU:Airport {code: 'GRU', name: 'São Paulo–Guarulhos International Airport', city: 'Sao Paulo', country: 'Brazylia', runways: 2, timezone: 'UTC-3'})
CREATE (JNB:Airport {code: 'JNB', name: 'O. R. Tambo International Airport', city: 'Johannesburg', country: 'RPA', runways: 2, timezone: 'UTC+2'})
CREATE (SVO:Airport {code: 'SVO', name: 'Sheremetyevo International Airport', city: 'Moskwa', country: 'Rosja', runways: 2, timezone: 'UTC+3'})
CREATE (BOM:Airport {code: 'BOM', name: 'Chhatrapati Shivaji Maharaj International Airport', city: 'Mumbai', country: 'Indie', runways: 2, timezone: 'UTC+5:30'})
CREATE (PEK:Airport {code: 'PEK', name: 'Beijing Capital International Airport', city: 'Pekin', country: 'Chiny', runways: 3, timezone: 'UTC+8'})
CREATE (LAX:Airport {code: 'LAX', name: 'Los Angeles International Airport', city: 'Los Angeles', country: 'USA', runways: 4, timezone: 'UTC-7'})
CREATE (AMS:Airport {code: 'AMS', name: 'Amsterdam Airport Schiphol', city: 'Amsterdam', country: 'Holandia', runways: 6, timezone: 'UTC+2'})
CREATE (IST:Airport {code: 'IST', name: 'Istanbul Airport', city: 'Istanbul', country: 'Turcja', runways: 3, timezone: 'UTC+3'})
CREATE (BKK:Airport {code: 'BKK', name: 'Suvarnabhumi Airport', city: 'Bangkok', country: 'Tajlandia', runways: 2, timezone: 'UTC+7'})
CREATE (SIN:Airport {code: 'SIN', name: 'Changi Airport', city: 'Singapur', country: 'Singapur', runways: 2, timezone: 'UTC+8'})
CREATE (AKL:Airport {code: 'AKL', name: 'Auckland Airport', city: 'Auckland', country: 'Nowa Zelandia', runways: 2, timezone: 'UTC+12'})
CREATE (EZE:Airport {code: 'EZE', name: 'Ministro Pistarini International Airport', city: 'Buenos Aires', country: 'Argentyna', runways: 2, timezone: 'UTC-3'})
CREATE (CAI:Airport {code: 'CAI', name: 'Cairo International Airport', city: 'Kair', country: 'Egipt', runways: 3, timezone: 'UTC+2'})
CREATE (JED:Airport {code: 'JED', name: 'King Abdulaziz International Airport', city: 'Dżudda', country: 'Arabia Saudyjska', runways: 3, timezone: 'UTC+3'})
CREATE (MEX:Airport {code: 'MEX', name: 'Mexico City International Airport', city: 'Meksyk', country: 'Meksyk', runways: 2, timezone: 'UTC-5'})


//Creating airlines
CREATE (RYR:Airline {name: 'Ryanair'})
CREATE (ACA:Airline {name: 'Air Canada'})
CREATE (QFA:Airline {name: 'Qantas'})
CREATE (ANA:Airline {name: 'All Nippon Airways'})
CREATE (UAE:Airline {name: 'Emirates'})
CREATE (TAM:Airline {name: 'LATAM Brasil'})
CREATE (SAA:Airline {name: 'South African Airways'})
CREATE (AFL:Airline {name: 'Aeroflot'})
CREATE (AIC:Airline {name: 'Air India'})
CREATE (CCA:Airline {name: 'Air China'})
CREATE (LOT:Airline {name: 'LOT Polish Airlines'})
CREATE (DLH:Airline {name: 'Lufthansa'})
CREATE (BAW:Airline {name: 'British Airways'})
CREATE (AFR:Airline {name: 'Air France'})
CREATE (AAL:Airline {name: 'American Airlines'})
CREATE (KLM:Airline {name: 'KLM'})
CREATE (TKA:Airline {name: 'Turkish Airlines'})
CREATE (TCE:Airline {name: 'Thai Airways'})
CREATE (SIA:Airline {name: 'Singapore Airlines'})
CREATE (ANZ:Airline {name: 'Air New Zealand'})
CREATE (ARG:Airline {name: 'Aerolineas Argentinas'})
CREATE (MSR:Airline {name: 'EgyptAir'})
CREATE (SVA:Airline {name: 'Saudi Arabian Airlines'})
CREATE (AMX:Airline {name: 'Aeroméxico'})
CREATE (UAL:Airline {name: 'United Airlines'})

//Creating connections between airports (flights)
CREATE
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO601', price: 100, aircraft:'Boeing 737', duration: 5.7}]->(DUB),
(DUB)-[:FLIGHT {airline: 'RYR', flight_number: 'FR602', price: 80, aircraft:'Boeing 737', duration: 5.8}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO701', price: 200, aircraft:'Boeing 787', duration: 8.5}]->(YYZ),
(YYZ)-[:FLIGHT {airline: 'ACA', flight_number: 'AC702', price: 220, aircraft:'Boeing 777', duration: 9.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO801', price: 300, aircraft:'Boeing 787', duration: 12.0}]->(SYD),
(SYD)-[:FLIGHT {airline: 'QFA', flight_number: 'QF802', price: 320, aircraft:'Airbus A380', duration: 13.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO901', price: 150, aircraft:'Boeing 787', duration: 6.7}]->(NRT),
(NRT)-[:FLIGHT {airline: 'ANA', flight_number: 'NH902', price: 160, aircraft:'Boeing 777', duration: 7.3}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1001', price: 110, aircraft:'Boeing 787', duration: 6.0}]->(DXB),
(DXB)-[:FLIGHT {airline: 'UAE', flight_number: 'EK1002', price: 120, aircraft:'Airbus A380', duration: 6.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1101', price: 130, aircraft:'Boeing 787', duration: 7.0}]->(GRU),
(GRU)-[:FLIGHT {airline: 'TAM', flight_number: 'JJ1102', price: 140, aircraft:'Airbus A340', duration: 8.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1201', price: 150, aircraft:'Boeing 787', duration: 8.5}]->(JNB),
(JNB)-[:FLIGHT {airline: 'SAA', flight_number: 'SA1202', price: 160, aircraft:'Airbus A340', duration: 9.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1301', price: 90, aircraft:'Boeing 787', duration: 4.0}]->(SVO),
(SVO)-[:FLIGHT {airline: 'AFL', flight_number: 'SU1302', price: 100, aircraft:'Airbus A320', duration: 4.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1401', price: 160, aircraft:'Boeing 787', duration: 8.0}]->(BOM),
(BOM)-[:FLIGHT {airline: 'AIC', flight_number: 'AI1402', price: 170, aircraft:'Boeing 777', duration: 8.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1501', price: 180, aircraft:'Boeing 787', duration: 9.0}]->(PEK),
(PEK)-[:FLIGHT {airline: 'CCA', flight_number: 'CA1502', price: 190, aircraft:'Boeing 777', duration: 9.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO101', price: 200, aircraft:'Boeing 787', duration: 8.5}]->(JFK),
(JFK)-[:FLIGHT {airline: 'AAL', flight_number: 'AA102', price: 210, aircraft:'Boeing 777', duration: 9.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO301', price: 50, aircraft:'Embraer 195', duration: 1.5}]->(SXF),
(SXF)-[:FLIGHT {airline: 'DLH', flight_number: 'LH302', price: 60, aircraft:'Airbus A320', duration: 2.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO201', price: 70, aircraft:'Boeing 737', duration: 2.5}]->(CDG),
(CDG)-[:FLIGHT {airline: 'AFR', flight_number: 'AF202', price: 80, aircraft:'Airbus A320', duration: 3.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO401', price: 90, aircraft:'Boeing 787', duration: 3.5}]->(LHR),
(LHR)-[:FLIGHT {airline: 'BAW', flight_number: 'BA402', price: 100, aircraft:'Boeing 777', duration: 4.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1601', price: 220, aircraft:'Boeing 787', duration: 11.0}]->(LAX),
(LAX)-[:FLIGHT {airline: 'UAL', flight_number: 'UA1602', price: 230, aircraft:'Boeing 777', duration: 11.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1701', price: 80, aircraft:'Boeing 737', duration: 2.5}]->(AMS),
(AMS)-[:FLIGHT {airline: 'KLM', flight_number: 'KL1702', price: 90, aircraft:'Boeing 737', duration: 3.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1801', price: 110, aircraft:'Boeing 787', duration: 4.0}]->(IST),
(IST)-[:FLIGHT {airline: 'TKA', flight_number: 'TK1802', price: 120, aircraft:'Airbus A330', duration: 4.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO1901', price: 160, aircraft:'Boeing 787', duration: 7.0}]->(BKK),
(BKK)-[:FLIGHT {airline: 'TCE', flight_number: 'TG1902', price: 170, aircraft:'Airbus A380', duration: 7.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2001', price: 180, aircraft:'Boeing 787', duration: 8.0}]->(SIN),
(SIN)-[:FLIGHT {airline: 'SIA', flight_number: 'SQ2002', price: 190, aircraft:'Airbus A380', duration: 8.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2101', price: 300, aircraft:'Boeing 787', duration: 12.0}]->(AKL),
(AKL)-[:FLIGHT {airline: 'ANZ', flight_number: 'NZ2102', price: 320, aircraft:'Boeing 777', duration: 13.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2201', price: 200, aircraft:'Boeing 787', duration: 8.5}]->(EZE),
(EZE)-[:FLIGHT {airline: 'ARG', flight_number: 'AR2202', price: 210, aircraft:'Boeing 777', duration: 9.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2301', price: 110, aircraft:'Boeing 787', duration: 4.5}]->(CAI),
(CAI)-[:FLIGHT {airline: 'MSR', flight_number: 'MS2302', price: 120, aircraft:'Boeing 737', duration: 5.0}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2401', price: 150, aircraft:'Boeing 787', duration: 6.0}]->(JED),
(JED)-[:FLIGHT {airline: 'SVA', flight_number: 'SV2402', price: 160, aircraft:'Boeing 777', duration: 6.5}]->(WAW),
(WAW)-[:FLIGHT {airline: 'LOT', flight_number: 'LO2501', price: 200, aircraft:'Boeing 787', duration: 8.5}]->(MEX),
(MEX)-[:FLIGHT {airline: 'AMX', flight_number: 'AM2502', price: 210, aircraft:'Boeing 777', duration: 9.0}]->(WAW),


//Creating relationships between airlines and airports
CREATE
(RYR)-[:OPERATES]->(DUB),
(ACA)-[:OPERATES]->(YYZ),
(QFA)-[:OPERATES]->(SYD),
(ANA)-[:OPERATES]->(NRT),
(UAE)-[:OPERATES]->(DXB),
(TAM)-[:OPERATES]->(GRU),
(SAA)-[:OPERATES]->(JNB),
(AFL)-[:OPERATES]->(SVO),
(AIC)-[:OPERATES]->(BOM),
(CCA)-[:OPERATES]->(PEK),
(LOT)-[:OPERATES]->(WAW),
(DLH)-[:OPERATES]->(SXF),
(BAW)-[:OPERATES]->(LHR),
(AFR)-[:OPERATES]->(CDG),
(AAL)-[:OPERATES]->(JFK),
(KLM)-[:OPERATES]->(AMS),
(TKA)-[:OPERATES]->(IST),
(TCE)-[:OPERATES]->(BKK),
(SIA)-[:OPERATES]->(SIN),
(ANZ)-[:OPERATES]->(AKL),
(ARG)-[:OPERATES]->(EZE),
(MSR)-[:OPERATES]->(CAI),
(SVA)-[:OPERATES]->(JED),
(AMX)-[:OPERATES]->(MEX),
(UAL)-[:OPERATES]->(LAX),
(LOT)-[:OPERATES]->(AMS),
(DLH)-[:OPERATES]->(IST),
(BAW)-[:OPERATES]->(BKK),
(AFR)-[:OPERATES]->(SIN),
(AAL)-[:OPERATES]->(AKL),
(KLM)-[:OPERATES]->(EZE),
(TKA)-[:OPERATES]->(CAI),
(TCE)-[:OPERATES]->(JED),
(SIA)-[:OPERATES]->(MEX),
(ANZ)-[:OPERATES]->(LAX),
(ARG)-[:OPERATES]->(NRT),
(MSR)-[:OPERATES]->(YYZ),
(SVA)-[:OPERATES]->(JFK),
(AMX)-[:OPERATES]->(LAX),
(UAL)-[:OPERATES]->(BKK),
(LOT)-[:OPERATES]->(YYZ)

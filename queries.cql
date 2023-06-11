// Query: What departures does the Warsaw airport handle?
MATCH (a1:Airport {code: 'WAW'})-[f:FLIGHT]->(a2:Airport) RETURN f as flights_from_Warsaw

// Query: What airlines does the Warsaw airport handle?
MATCH (a:Airport {code: 'WAW'})<-[:OPERATES]-(air:Airline) RETURN air

// Query: What flights can be made from airports with more runways to airports with fewer runways?
MATCH (start:Airport)-[f:FLIGHT]->(end:Airport)
WHERE start.runways > end.runways
RETURN start.code AS Start_Airport, start.runways as Start_Runways, end.code AS End_Airport, end.runways as End_Runways, f.airline AS Airline

// Query: Which airport has the most connections?
MATCH (a:Airport)-[f:FLIGHT]-(a2:Airport)
RETURN a.name as Airport_Name, COUNT(f) AS NumFlights
ORDER BY NumFlights DESC
LIMIT 1

// Query: Which airline serves the most airports?
MATCH (air:Airline)-[:OPERATES]->(a:Airport)
RETURN air.name, COUNT(a) AS NumAirports
ORDER BY NumAirports DESC
LIMIT 1

// Query: How to get from point a to point b visiting different airports?
WITH p, [n in nodes(p) | id(n)] as node_ids
MATCH p=(start:Airport {code: 'JFK'})-[:OPERATES*]-(end:Airport {code: 'LAX'}) 
WHERE size(node_ids) = size(apoc.coll.toSet(node_ids))
RETURN p

// Query: Which airports serve more than one airline?
MATCH (a:Airport)<-[:OPERATES]-(air:Airline)
WITH a, COUNT(air) AS airlines
WHERE airlines > 1
RETURN a

// Query: Where can you fly from Poland for less than 400 PLN (assuming the prices in the database are in dollars)?
MATCH (departure:Airport)-[flight:FLIGHT]->(arrival:Airport)
WHERE departure.country = 'Polska' AND flight.price * 4.24 < 400
RETURN departure, flight, arrival

// Query: What is the longest flight in the database?
MATCH (Airport)-[flight:FLIGHT]->(Airport)
RETURN flight
ORDER BY flight.duration DESC
LIMIT 1

// Query: What flights can be made to change the time zone and not fly more than 4 hours?
MATCH (departure:Airport)-[flight:FLIGHT]->(arrival:Airport)
WHERE departure.timezone <> arrival.timezone
AND flight.duration <= 4
RETURN departure, flight, arrival

// Query: Find flights from Poland to an exotic country.
MATCH (departure:Airport {country: 'Polska'})-[flight:FLIGHT]->(arrival:Airport) WHERE arrival.country IN ['Thailand', 'Indonesia', 'Maldives', 'Brazil'] RETURN departure, flight, arrival
LIMIT 5

// Query: Find the cheapest round trip flight from Warsaw.
MATCH (departure:Airport {city: 'Warszawa'})-[flight:FLIGHT]->(arrival:Airport)-[flight2:FLIGHT]->(end2:Airport {city: 'Warszawa'})
RETURN departure.name AS Departure, arrival.name AS Arrival, (flight.price + flight2.price) AS fullPrice 
ORDER BY (flight.price + flight2.price) ASC
LIMIT 1

// Query: Find flights from Poland heading west with a price lower than 300.
MATCH (departure:Airport {country: 'Polska'})-[flight:FLIGHT]->(arrival:Airport)
WHERE toInteger(split(departure.timezone, 'UTC')[1]) > toInteger(split(arrival.timezone, 'UTC')[1])
AND flight.price < 300
RETURN flight, arrival

// Query: Find the cheapest trip where two countries are visited.
MATCH (a:Airport)-[flight1:FLIGHT]->(country1:Airport)-[flight2:FLIGHT]->(country2:Airport)-[flight3:FLIGHT]->(a:Airport)
RETURN a.name as Start_EndPoint, country1.name as Destination1, country2.name as Destination2, flight1.price + flight2.price + flight3.price AS TotalCost
ORDER BY TotalCost ASC
LIMIT 1

// Query: Find 10 cheapest flights east from Poland where the aircraft is a Boeing 787.
MATCH (departure:Airport {country: 'Polska'})-[flight:FLIGHT]->(arrival:Airport)
WHERE flight.aircraft = 'Boeing 787'
AND toInteger(split(departure.timezone, 'UTC')[1]) < toInteger(split(arrival.timezone, 'UTC')[1])
RETURN departure, flight, arrival
ORDER BY flight.price ASC
LIMIT 10

// Query: Find the shortest flight path between two airports
// The query uses Dijkstra's algorithm to find the shortest flight path (in terms of flight duration) between two airports: London and New York. 
// The query considers flight directions, which means it looks for paths that go from the start airport to the end airport through intermediate airports, following flight directions. 
// The result returns the shortest path and the total flight time for that path.
MATCH (start:Airport {code: 'LHR'}), (end:Airport {code: 'JFK'})
CALL apoc.algo.dijkstra(start, end, 'FLIGHT>', 'duration') YIELD path, weight
RETURN path, weight

// The query uses the shortestPath function to find the shortest flight path (in terms of number of flights) between two airports: London and New York. 
// The query considers flight directions. Additionally, the query calculates the total flight duration on each found path, adding up the duration of all flights on the path. 
// The result returns the shortest path and the total flight duration on that path.
MATCH p = shortestPath((start:Airport {code: 'LHR'})-[:FLIGHT*..10]->(end:Airport {code: 'JFK'})) 
RETURN p, reduce(totalDuration = 0, r in relationships(p) | totalDuration + r.duration) as totalDuration

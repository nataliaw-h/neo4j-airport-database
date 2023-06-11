# Neo4j Airport Database

This repository contains the Neo4j database setup and queries for a hypothetical airline route database. The data model includes nodes for Airports and Airlines, as well as relationships for Flights and Operations.

## Structure

**1. Airport nodes**, represented by attributes like airport code, name, city, country, number of runways, and timezone.

**2. Airline nodes**, represented by an attribute for the airline name.

**3. FLIGHT relationships**, containing attributes such as airline, flight number, price, aircraft type, and flight duration.

**4. OPERATES relationships**, signifying the relationship between an airline and an airport it operates in.

## Files

**database.cql:** This file contains the Cypher queries necessary to set up the database, including creating nodes and relationships.

**queries.cql:** This file contains various Cypher queries that can be run against the database to retrieve data, such as getting all flights from a specific airport, or finding the shortest path between two airports.

Please note that the database and queries are hypothetical and for demonstration purposes only. They do not reflect actual airline routes or operations.

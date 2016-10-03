# Measurinator

## About

This is a Ruby on Rails application with Cassandra back-end to store and show temperature measurements. You can use latest Cassandra with this. 

The application has an API for storing the measurements.

## Installation

Currently you need to install the Cassandra database schema manually.

It is in the file **db/schema.cql**.

First create keyspace:

    $ cqlsh
    
    cqlsh> create KEYSPACE temperatures WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

Then

	$ cqlsh -f db/schema.cql
	
Now you are ready to run the software by executing 

	$ rails server

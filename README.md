# Gremlin 3 on Neo4j 2

[Docker](https://www.docker.com) container to install and run [Gremlin](http://tinkerpop.apache.org/) 3.2.0 on [Neo4j](https://neo4j.com/) 2.3.

## Features

* [Gremlin](http://tinkerpop.apache.org/) 3.2.0 
* [Neo4j](https://neo4j.com/) 2.3.

## Installation

1. Install the exakat/gremlin4neo4j container:

    ``` sh
	$ docker pull exakat/gremlin4neo4j
	```

2. Run Gremlin :

    ``` sh
	$ docker run --rm exakat/gremlin4neo4j run
    ```

## Configuration

* Use --p to map a port to 7777 
* Gremlin is installed in /usr/src/gremlin/neo4j/ : this is where you may put gremlin scripts to be loaded.

    ``` sh
	$ docker run -v $(pwd)/gremlinScripts:/usr/src/gremlin/neo4j/scripts --rm exakat/gremlin4neo4j run
    ```
* Gremlin is currently (April 2017) in version 3.2.4, but has a persistent bug that is fixed in 3.2.0-incubating. 

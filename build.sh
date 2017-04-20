#compile 
docker build --no-cache -t exakat/gremlin4neo4j .


# manual test
-v /Users/famille/Desktop/analyzeG3/projects/fuelphp2/code/:/src:ro
docker run -it -v $(pwd)/neo4j/scripts/:/usr/src/gremlin/neo4j/scripts --entrypoint /bin/bash  exakat/gremlin4neo4j

docker run -it --entrypoint /bin/bash  exakat/gremlin4neo4j


docker ps -a | grep myGremlin3
docker stop d040b51fc40b
docker rm d040b51fc40b

docker run --name myGremlin3 -p 7777:7777 -d exakat/gremlin4neo4j 

docker run --publish=7777:7777 -d exakat/gremlin4neo4j 
docker run --publish=7777:7777 \
            -v /Users/famille/Desktop/analyzeG3/projects/.exakat:/Users/famille/Desktop/analyzeG3/projects/.exakat \
            -v /Users/famille/Desktop/analyzeG3/neo4j/scripts:/usr/src/gremlin/neo4j/scripts \
            -d exakat/gremlin4neo4j 

docker run \
    --publish=7474:7474 \
    neo4j:2.3

192.168.99.100    
    
docker stop --name myGremlin3 
-d exakat/gremlin4neo4j 


curl -s -G http://192.168.99.100:7777/tp/gremlin/execute
curl -s -G http://192.168.99.100:7474/tp/gremlin/execute
curl -s -G http://localhost:7474/tp/gremlin/execute
curl -s -G http://localhost:7777/tp/gremlin/execute


docker exec -i -t 0b3677ea7dc6 /bin/bash 

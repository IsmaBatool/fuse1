mvn -Pf8-deploy -Ddocker.registry=172.30.87.17:5000 -Ddocker.username=$(oc whoami) -Ddocker.password=$(oc whoami -t) -Dfabric8.dockerUser=$(oc project -q)/
mvn fabric8:json fabric8:apply -Dfabric8.dockerUser=$(oc get svc docker-registry -n default -o 'jsonpath={.spec.clusterIP}:{.spec.ports[0].port}')/$(oc project -q)/

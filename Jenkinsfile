node{
stage('Clone'){
     checkout scm
   }
stage('Build image'){
   docker.image('tomcat:latest').withRun('-p 8090:80 --name testtom'){ c->
   sh 'docker ps'
   sh 'sleep 20'
   sh 'curl localhost:8090'
}
}
}



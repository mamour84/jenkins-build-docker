node{
def registryProjet='hub.docker.com/mamounesene/monginx'
def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
stage('Clone'){
     checkout scm
}
def img = stage('BUILD Image'){
  docker.build("$IMAGE")
}
stage('RUN image'){
   img.withRun('-p 8090:80 --name run-$BUIL_ID-nginx'){ c->
   sh 'docker ps'
   sh 'sleep 20'
   sh 'curl localhost:8090'
}
}
stage('Push'){
<<<<<<< HEAD
 docker.withRegistry('https://hub.docker.com', 'reg1'){
=======
 docker.withRegistry(''){
>>>>>>> 7a859718cd6f801f24623a4cc549f2030f94f450
   img.push 'latest'
  
}

}

}




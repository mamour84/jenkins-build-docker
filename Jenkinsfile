node{
stage('Clone'){
     checkout scm
}
def img = stage('BUILD Image'){
  docker.build('mamounesene/nginx')
}
stage('RUN image'){
   img.withRun('-p 8090:80 --name run-$BUIL_ID-nginx'){ c->
   sh 'docker ps'
   sh 'sleep 20'
   sh 'curl localhost:8090'
}
}
stage('Push'){
 docker.withRegistry('https://hub.docker.com'){
   img.push 'latest'
   img.push()
}

}

}




node{
stage('Clone'){
     checkout scm
   }
stage('BUILD Image'){
  docker.build('mamoune/nginx')
}
stage('RUN image'){
   docker.image('mamoune/nginx').withRun('-p 8090:80 --name testnginx'){ c->
   sh 'docker ps'
   sh 'sleep 20'
   sh 'curl localhost:8090'
}
}
}



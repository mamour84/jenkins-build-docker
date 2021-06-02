node{
stage('Clone'){
     git credentialsId: 'ffcf732e-405c-448f-b67f-97270178037c', url: 'https://github.com/mamour84/valaxy-hello-world.git'
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



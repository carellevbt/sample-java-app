def gv

pipeline{

agent any

tools{
    maven 'maven-3.8.6'
}

stages{
    stage("build jar file"){
        steps{
            sh 'mvn package'
        }
    }

    stage("build image"){
        steps{
            sh 'docker build -t carellevbt/test-1:sample2 .'
        }
    }

    stage("docker hub login"){
        steps{
        withCredentials([usernamePassword(credentialsId: '7ea3ae58-0b89-46de-ba6b-085cd3c7465c', passwordVariable: 'PASS', usernameVariable: 'USER')]){
            sh 'echo $PASS | docker login -u $USER --password-stdin'
        }
        }
    }

    stage("push image to Dockerhub"){
        steps{
            sh 'docker push carellevbt/test-1:sample2'
        }
    }
}
}
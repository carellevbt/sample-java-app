def gv

pipeline{

agent any

tools{
    maven 'maven-3.8.6'
}

stages{
    stage("groovy file call"){
        steps{
            gv.load = script.groovy
        }
    }
    stage("build jar file"){
        steps{
            gv.buildJar()
        }
    }

    stage("build image"){
        steps{
            gv.buildImage()
        }
    }

    stage("docker hub login"){
        steps{
            gv.dockerlogin()
        }
    }

    stage("push image to Dockerhub"){
        steps{
            gv.pushimage()
        }
    }
}
}
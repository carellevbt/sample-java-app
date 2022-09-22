def gv

pipeline{

agent any

tools{
    maven 'maven-3.8.6'
}

stages{
    stage("groovy file call"){
        steps{
            script{
                gv = load "script.groovy"
            }
        }
    }
    stage("build jar file"){
        steps{
            script{
                gv.buildJar()
            }
        }
    }

    stage("build image"){
        steps{
            script{
                gv.buildImage()
            }
        }
    }

    stage("docker hub login"){
        steps{
            script{
                gv.dockerlogin()
            }
        }
    }

    stage("push image to Dockerhub"){
        steps{
            script{
                gv.pushimage()
            }
        }
    }

    stage("success"){
        steps{
            echo 'success'
        }
    }
}
}
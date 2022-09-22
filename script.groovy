def buildJar() {
    sh 'mvn package'
}

def buildImage() {
    sh 'docker build -t carellevbt/test-1:sample2 .'
}

def dockerlogin() {
    withCredentials([usernamePassword(credentialsId: '7ea3ae58-0b89-46de-ba6b-085cd3c7465c', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh 'echo $PASS | docker login -u $USER --password-stdin'
    }
}

def pushimage() {
    sh 'docker push carellevbt/test-1:sample2'
}

return this
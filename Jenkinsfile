node {
    checkout scm

    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {

        def customImage = docker.build("ephilipdoc/pyhello:${env.BUILD_NUMBER}")
        customImage.push()
        customImage.push('latest')
    }
    sh 'docker rmi -f ephilipdoc/pyhello:${BUILD_NUMBER}'
    sh 'docker rmi -f ephilipdoc/pyhello'

}
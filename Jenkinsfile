node {
    withEnv(['DOCKER_REPO=ephilipdoc/pyhello','DOCKER_NGINX=ephilipdoc/customnginx']) {
        stage('Checkout') {
            checkout scm
        }
        stage('Docker-build-push'){

            docker.withRegistry('', 'dockerhub') {

                def customImage = docker.build("${DOCKER_REPO}:${env.BUILD_NUMBER}")
                def customnginxImage = docker.build("${DOCKER_NGINX}:${env.BUILD_NUMBER}","-f Dockerfile_nginx .")
                customImage.push()
                customImage.push('latest')
                customnginxImage.push()
                customnginxImage.push('latest')
            }
        }
        stage('cleanup'){
            sh 'docker rmi -f ${DOCKER_REPO}:${BUILD_NUMBER}'
            sh 'docker rmi -f ${DOCKER_REPO}'
            sh 'docker rmi -f ${DOCKER_NGINX}:${BUILD_NUMBER}'
            sh 'docker rmi -f ${DOCKER_NGINX}'
        }
    }  

}
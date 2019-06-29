currentBuild.displayName = "${BUILD_NUMBER} - image: spring-boot-app - version: ${version}"
currentBuild.description = "${BUILD_NUMBER} - image: spring-boot-app - version: ${version}"
pipeline {
    agent any
    environment {
        registry = "zynpsnltrk/spring-boot-app"
        registryCredential = 'dockerhub'
    }

    stages {
        stage('BUILD'){
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {

		        def version_tag = params.version
                        def customImage = docker.build("zynpsnltrk/spring-boot-app")
                        customImage.push(version_tag)
                        env.DOCKER_TAG=version_tag
		    
                    }
                }
            }
        }
    }
}


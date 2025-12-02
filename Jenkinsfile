pipeline {
    agent any
    environment {
        IMAGE_NAME = "python-print-app:latest"
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Checking out code from Git..."
                // Jenkins سيسحب الكود من المستودع تلقائيًا
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}") // بناء الصورة
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    // Supprimer l'ancien conteneur si nécessaire
                    sh 'docker rm -f python-print-app || true' 
                    // Lancer le conteneur
                    sh 'docker run --name python-print-app ${IMAGE_NAME}'
                }
            }
        }
    }
    post {
        success {
            echo 'Pipeline terminé avec succès !' 
        }
        failure {
            echo 'Pipeline échoué.'
        }
    }
}

pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sponkyy1/my_project.git']]])
            }
        }
        
        stage('Execute Ansible') {
            steps {
                ansiblePlaybook credentialsId: '/vagrant/private_keys/private_key', disableHostKeyChecking: true, installation: 'ansible', inventory: 'Ansible/hosts.txt', playbook: 'Ansible/playbook.yml'
            }
        }
    }
}

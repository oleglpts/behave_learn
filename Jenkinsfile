node {
    stage ('Cloning Git') {
        git(
            url: 'https://github.com/oleglpts/behave_learn.git',
            branch: "master"
        )
    }
    stage('Build') {
        sh '''
            cd scripts
            ./venv_create
            cd ..
            ./behave.sh
        '''
    }
    stage('reports') {
        sh """
            allure generate reports
        """
    }
}

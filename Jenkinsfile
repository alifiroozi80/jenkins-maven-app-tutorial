// Must be top-level
pipeline {
    // Where to execute (Jenkins Cluster)
    // An agent is typically a machine or container which connects to a Jenkins controller and executes tasks when directed by the controller
    agent any

    // Where the actual work happens
    stages {

        // Stage -- A work
        // 	You can have as many Stages as you want
        // Build Stage
        stage("build") {

            // Where some commands run in the Jenkins server
            steps {
                // Some Commands. e.g.
                echo 'Building the Application...'
            }
        }
        // Test Stage
        stage("test") {
            steps {
                echo 'Testing the Application...'
            }
        }
        // Deploy Stage
        stage("deploy") {
            steps {
                echo 'Deploying the Application...'
            }
        }
    }
}

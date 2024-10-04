pipeline {
    agent any

    stages {
        stage('Run CPU Load Script') {
            steps {
                sh './cpu_load.sh'
            }
        }

        stage('Check CPU Load') {
            steps {
                script {
                    def threshold = 0.5

                    while (true) {
                        // Get current CPU load (10-minute average)
                        def load = sh(script: "uptime | awk '{print \$10}' | sed 's/,//'", returnStdout: true).trim()
                        def loadNumber = load.toFloat()

                        if (loadNumber > threshold) {
                            def recipient = "mailto:kuldeep.rawat@wittybrains.com, mailto:vikrant.mehrol@wittybrains.com, mailto:sejal.tyagi@wittybrains.com"
                            def subject = "CPU Load Alert"
                            def body = "The CPU load has exceeded 50%. Current load: ${load}."

                            mail to: recipient, subject: subject, body: body
                            break  
                        }

                        sleep(10) 
                    }
                }
            }
        }
    }
}

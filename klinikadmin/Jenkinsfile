node {
   stage('Preparation') { 
      git 'https://github.com/TimGundmann/klinikadmin.git'
   }
   stage('Test') {
   	  env.DISPLAY=:1
	  sh 'npm install'
	  sh 'ng test --watch false'
   }
   stage('Build') {
	  sh 'ng build --prod -aot'
   }
   stage('Docker Deploy') {
        sh "docker-compose stop"
        sh "docker-compose build"
        sh "docker-compose up -d"
   }
}
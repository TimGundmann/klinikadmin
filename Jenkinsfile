node {
   stage('Preparation') { 
      git 'https://github.com/TimGundmann/klinikadmin.git'
   }
   stage('Test') {
	  env.DISPLAY=':2'
   	  wrap([$class: 'Xvfb', displayNameOffset: 2]) {
		  sh 'npm install'
		  sh 'ng test --watch false --single-run true'
	  }
   }
   stage('Build') {
	  sh 'ng build --prod -aot --base-href ./admin'
   }
   stage('Docker Deploy') {
        sh "docker-compose stop"
        sh "docker-compose build"
        sh "docker-compose up -d"
   }
}
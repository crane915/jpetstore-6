node('swarm') {
    stage 'Checkout'
    git 'https://github.com/yunlzheng/jpetstore-6.git'

    stage 'Package'
    sh 'mvn clean package -DskipTests -DargLine="-Xmx1024m"'

    stage 'Test'

    echo 'deploy app to TEST env'

    stage 'UAT'

    echo 'deploy app to UAT env'

    stage 'Prod'

    echo 'deploy app to Prod env'
}

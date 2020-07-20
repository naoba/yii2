<h1> DOCKER YII2 ADVANCED TEMP </h1>

<h2> <u>DOCKER IMAGE</u> </h2>


<h3> Requirements.txt (Inside app Folder)</h3>
    <p>composer PHP packages & extension
    </p>

    apa_php:
            php apache with composer:
            composer install yii2 advanced
    ## Download framwork yii2 by using composer##
     -- docker exec phpcom composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-advanced yii_advanced
    ## application init for Development mode ##
     -- docker exec -it phpcom php yii_advanced/init 
      => 0
      => yes
     https://http://127.0.0.1:8080/yii_advanced/frontend/web/index.php?r=site%2Findex

    mysql:

    phpmyadmin:

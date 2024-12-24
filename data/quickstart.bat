set /p name=name:

set /p var=password:

set /p propath=project path:

mysql -uroot -p -e "set password for %name%@localhost = password('%var%'); create database yii2advanced; use yii2advanced; source ./htdocs/%propath%/yii2advanced.sql;"

cd /d %~dp0

@echo off

@echo ^<?php>common\config\main-local.php

@echo return [ >>common\config\main-local.php

@echo 'components' ^> [ >>common\config\main-local.php

@echo 'db' ^> [ >>common\config\main-local.php

@echo 'class' ^> 'yii\db\Connection', >>common\config\main-local.php

@echo 'class' ^>'yii/db/Connection', >>common\config\main-local.php

@echo 'dsn'=^>'mysql:host=localhost;dbname=yii2advanced'>>common\config\main-local.php

@echo 'username'=^>'%name%',>>common\config\main-local.php

@echo 'password'=^>'%var%',>>common\config\main-local.php

@echo 'charset'=^>'utf8',>>common\config\main-local.php

@echo ],>>common\config\main-local.php

@echo 'mailer'=^>[>>common\config\main-local.php

@echo 'class'=^>'yii\swiftmailer\Mailer',>>common\config\main-local.php

@echo 'viewPath'=^>'@common/mail',>>common\config\main-local.php

@echo 'useFileTransport'=^> true,>>common\config\main-local.php

@echo ],>>common\config\main-local.php

@echo ],>>common\config\main-local.php

@echo ];>>common\config\main-local.php
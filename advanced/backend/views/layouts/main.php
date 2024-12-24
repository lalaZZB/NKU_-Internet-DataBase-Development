<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <style>
        /* 背景渐变 */
        .navbar {
            background: linear-gradient(90deg, rgba(0, 123, 255, 1) 0%, rgba(23, 162, 184, 1) 100%);
            border-radius: 0 0 10px 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* 主导航栏项目 */
        .navbar-nav > li > a {
            color: #fff !important;
            font-size: 16px;
            padding: 12px 20px;
        }

        /* 悬停效果 */
        .navbar-nav > li > a:hover {
            background-color: #0056b3;
            border-radius: 5px;
        }

        /* 下拉菜单 */
        .navbar-nav .dropdown-menu {
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 5px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
        }

        .navbar-nav .dropdown-menu > li > a {
            color: #fff;
        }

        .navbar-nav .dropdown-menu > li > a:hover {
            background-color: #17a2b8;
        }

        /* logo样式 */
        .navbar-brand {
            color: #fff !important;
            font-weight: bold;
            font-size: 24px;
        }
    </style>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-expand-lg navbar-dark',
        ],
    ]);
    
    $menuItems = [
        ['label' => 'Home', 'url' => ['/site/index']],
        [
            'label' => '新闻',
            'items' => [
                ['label' => '新闻管理', 'url' => ['/news/index']],
                ['label' => '新闻点赞管理', 'url' => ['/news-like/index']],
                ['label' => '新闻评论管理', 'url' => ['/news-comments/index']],
            ]
        ],
        [
            'label' => '视频',
            'items' => [
                ['label' => '视频管理', 'url' => ['/video/index']],
                ['label' => '视频点赞管理', 'url' => ['/video-like/index']],
                ['label' => '视频评论管理', 'url' => ['/video-comment/index']],
            ]
        ],
        [
            'label' => '博客',
            'items' => [
                ['label' => '博客管理', 'url' => ['/blog/index']],
                ['label' => '点赞管理', 'url' => ['/like/index']],
                ['label' => '评论管理', 'url' => ['/comment/index']],
            ]
        ],
    ];

    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                'Logout (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }

    echo Nav::widget([
        'options' => ['class' => 'navbar-nav ml-auto'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; <?= Html::encode(Yii::$app->name) ?> <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\NewsLike */

$this->title = 'Create News Like';
$this->params['breadcrumbs'][] = ['label' => 'News Likes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="news-like-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\VideoLike */

$this->title = 'Create Video Like';
$this->params['breadcrumbs'][] = ['label' => 'Video Likes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="video-like-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

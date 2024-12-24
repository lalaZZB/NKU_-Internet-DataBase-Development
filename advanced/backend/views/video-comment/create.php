<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\VideoComment */

$this->title = 'Create Video Comment';
$this->params['breadcrumbs'][] = ['label' => 'Video Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="video-comment-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

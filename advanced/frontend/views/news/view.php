<?php
use yii\helpers\Html;

$this->title = $news->title;
?>

<h1><?= Html::encode($news->title) ?></h1>
<p><small>发布时间：<?= Yii::$app->formatter->asDatetime($news->created_at) ?></small></p>
<div>
    <?= nl2br(Html::encode($news->content)) ?>
</div>
<a href="<?= \yii\helpers\Url::to(['news/index']) ?>">返回列表</a>

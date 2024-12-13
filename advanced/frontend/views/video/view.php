<?php
use yii\helpers\Html;

$this->title = $video->title;
?>

<h1><?= Html::encode($video->title) ?></h1>
<p><small>发布时间：<?= Yii::$app->formatter->asDatetime($video->created_at) ?></small></p>
<p><?= nl2br(Html::encode($video->description)) ?></p>

<div class="video-container">
    <!-- 视频播放 -->
    <video width="100%" height="auto" controls>
        <source src="<?= Html::encode($video->url) ?>" type="video/mp4">
        您的浏览器不支持视频播放。
    </video>
</div>

<a href="<?= \yii\helpers\Url::to(['video/index']) ?>">返回列表</a>

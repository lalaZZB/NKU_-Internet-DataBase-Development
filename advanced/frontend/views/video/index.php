<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = '视频列表';
?>

<h1>视频列表</h1>

<div class="video-list">
    <?php foreach ($videos as $video): ?>
        <div class="video-item">
            <h2><?= Html::encode($video->title) ?></h2>
            <p><?= Html::encode(mb_substr($video->description, 0, 100)) ?>...</p>
            <a href="<?= Url::to(['video/view', 'id' => $video->id]) ?>">查看详情</a>
        </div>
    <?php endforeach; ?>
</div>

<!-- 分页链接 -->
<?= LinkPager::widget(['pagination' => $pagination]) ?>

<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = '新闻列表';
?>

<h1>新闻列表</h1>

<ul>
    <?php foreach ($news as $item): ?>
        <li>
            <h2><?= Html::encode($item->title) ?></h2>
            <p><?= Html::encode(mb_substr($item->content, 0, 100)) ?>...</p>
            <a href="<?= Url::to(['news/view', 'id' => $item->id]) ?>">查看详情</a>
        </li>
    <?php endforeach; ?>
</ul>

<!-- 分页链接 -->
<?= LinkPager::widget(['pagination' => $pagination]) ?>

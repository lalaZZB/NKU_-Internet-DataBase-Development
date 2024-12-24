<?php
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = '视频列表';
?>

<!-- 页面主标题 -->
<h1 class="page-title">视频列表</h1>

<!-- 视频列表容器 -->
<div class="video-list">
    <?php foreach ($videos as $video): ?>
        <div class="video-item">
            <!-- 视频封面和标题 -->
            <div class="video-cover">
                <?php if ($video->cover_image): ?>
                    <img src="<?= Html::encode(Yii::getAlias('@web' . $video->cover_image)) ?>" alt="封面图">
                <?php endif; ?>
            </div>
            <div class="video-info">
                <h2><?= Html::encode($video->title) ?></h2>
                <p><?= Html::encode(mb_substr($video->description, 0, 100)) ?>...</p>
                <a href="<?= Url::to(['video/view', 'id' => $video->id]) ?>" class="view-btn">查看详情</a>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<!-- 分页链接 -->
<div class="pagination-container">
    <?= LinkPager::widget(['pagination' => $pagination]) ?>
</div>

<!-- 内联 CSS 样式 -->
<style>
    /* 页面主标题样式 */
    .page-title {
        font-family: 'Roboto', sans-serif;
        text-align: center;
        font-size: 36px;
        color: #333;
        margin-bottom: 30px;
    }

    /* 视频列表容器 */
    .video-list {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
        gap: 20px;
        padding: 20px;
    }

    /* 视频项样式 */
    .video-item {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    /* 视频封面图 */
    .video-cover img {
        width: 100%;
        height: auto;
        border-bottom: 2px solid #ddd;
    }

    /* 视频信息 */
    .video-info {
        padding: 15px;
    }

    .video-info h2 {
        font-family: 'Roboto', sans-serif;
        font-size: 20px;
        color: #333;
        margin: 0 0 10px;
    }

    .video-info p {
        font-family: 'Arial', sans-serif;
        font-size: 14px;
        color: #555;
        margin-bottom: 20px;
    }

    /* 查看详情按钮 */
    .view-btn {
        display: inline-block;
        padding: 10px 15px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .view-btn:hover {
        background-color: #0056b3;
    }

    /* 视频项的悬停效果 */
    .video-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    }

    /* 分页样式 */
    .pagination-container {
        text-align: center;
        margin-top: 30px;
    }

    /* 分页按钮 */
    .pagination-container .pagination a {
        color: #007bff;
        text-decoration: none;
        padding: 8px 16px;
        border: 1px solid #ddd;
        margin: 0 5px;
        border-radius: 5px;
    }

    .pagination-container .pagination a:hover {
        background-color: #007bff;
        color: #fff;
    }
    /* 背景样式 */
    body {
        background: url('/advanced/frontend/assets/images/background.jpg') no-repeat center center fixed;
        background-size: cover;
    }
</style>
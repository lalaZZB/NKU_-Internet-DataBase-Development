<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the view of frontend.
 */
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = $news->title;
?>

<!-- 页面内容容器 -->
<div class="news-detail-container">
    <div class="container">

        <!-- 新闻标题 -->
        <h1 class="news-title"><?= Html::encode($news->title) ?></h1>

        <!-- 发布时间 -->
        <p class="news-time">
            <small>发布时间：<?= Yii::$app->formatter->asDatetime($news->created_at, 'php:Y-m-d H:i') ?></small>
        </p>

        <!-- 新闻内容 -->
        <div class="news-content">
            <?= nl2br(Html::encode($news->content)) ?>
        </div>

        <!-- 返回按钮 -->
        <a href="<?= Url::to(['news/index']) ?>" class="btn btn-back">返回列表</a>
    </div>
</div>

<!-- 自定义样式 -->
<style>
    /* 页面背景样式 */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        padding-top: 30px;
    }

    /* 新闻详情页容器 */
    .news-detail-container {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        padding: 30px;
        margin: 0 20px;
    }

    /* 新闻标题 */
    .news-title {
        font-size: 2.5rem;
        font-weight: 700;
        color: #333;
        margin-bottom: 15px;
    }

    /* 新闻发布时间 */
    .news-time {
        font-size: 1rem;
        color: #777;
        margin-bottom: 30px;
    }

    /* 新闻内容 */
    .news-content {
        font-size: 1.125rem;
        line-height: 1.6;
        color: #444;
        white-space: pre-wrap; /* 保证换行符正确显示 */
        margin-bottom: 30px;
    }

    /* 返回按钮样式 */
    .btn-back {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 1.125rem;
        transition: background-color 0.3s ease;
    }

    .btn-back:hover {
        background-color: #0056b3;
    }

    /* 适配移动设备 */
    @media (max-width: 768px) {
        .news-title {
            font-size: 2rem;
        }

        .news-time {
            font-size: 0.875rem;
        }

        .news-content {
            font-size: 1rem;
        }

        .btn-back {
            font-size: 1rem;
            padding: 8px 16px;
        }
    }
</style>
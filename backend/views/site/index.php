<?php
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = '后台管理首页';
?>

<div class="site-index">
    <h1 class="text-center mb-4">欢迎来到后台管理系统</h1>
    <p class="text-center mb-5">通过以下按钮管理各个模块：</p>

    <div class="row justify-content-center">
        <!-- 新闻管理模块 -->
        <div class="col-md-4 mb-4">
            <div class="card shadow-lg rounded-4 news-card">
                <div class="card-header bg-gradient text-white text-center p-3 rounded-top">
                    <h4>新闻管理</h4>
                </div>
                <div class="card-body">
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入新闻管理', Url::to(['news/index']), [
                                'class' => 'btn btn-block btn-outline-primary rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入新闻点赞管理', Url::to(['news-like/index']), [
                                'class' => 'btn btn-block btn-outline-success rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入新闻评论管理', Url::to(['news-comments/index']), [
                                'class' => 'btn btn-block btn-outline-info rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 视频管理模块 -->
        <div class="col-md-4 mb-4">
            <div class="card shadow-lg rounded-4 news-card">
                <div class="card-header bg-gradient text-white text-center p-3 rounded-top">
                    <h4>视频管理</h4>
                </div>
                <div class="card-body">
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入视频管理', Url::to(['video/index']), [
                                'class' => 'btn btn-block btn-outline-success rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入视频点赞管理', Url::to(['video-like/index']), [
                                'class' => 'btn btn-block btn-outline-warning rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入视频评论管理', Url::to(['video-comment/index']), [
                                'class' => 'btn btn-block btn-outline-info rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 博客管理模块 -->
        <div class="col-md-4 mb-4">
            <div class="card shadow-lg rounded-4 news-card">
                <div class="card-header bg-gradient text-white text-center p-3 rounded-top">
                    <h4>博客管理</h4>
                </div>
                <div class="card-body">
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入博客管理', Url::to(['blog/index']), [
                                'class' => 'btn btn-block btn-outline-info rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入点赞管理', Url::to(['like/index']), [
                                'class' => 'btn btn-block btn-outline-warning rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                    <div class="card mb-3 rounded-4">
                        <div class="card-body">
                            <?= Html::a('进入评论管理', Url::to(['comment/index']), [
                                'class' => 'btn btn-block btn-outline-danger rounded-pill px-4 py-3 text-uppercase',
                                'style' => 'font-size: 16px;',
                            ]) ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- CSS Styles (for custom styling) -->
<style>
    /* 卡片样式 */
    .news-card {
        background-color: #4DB1F3; /* 紫色背景 */
        color: #fff;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border-radius: 1rem; /* 添加圆角 */
    }

    .news-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    /* 标题圆角 */
    .rounded-top {
        border-top-left-radius: 1rem;
        border-top-right-radius: 1rem;
    }

    /* 按钮悬停效果 */
    .btn:hover {
        transform: scale(1.05);
    }

    /* 子卡片样式 */
    .card.mb-3 {
        background-color: #FFFFFF;
        border-radius: 1rem; /* 添加圆角 */
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 2rem;
    }

    .card-body {
        padding: 1.5rem;
    }
</style>

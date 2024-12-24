<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the view of frontend.
 */
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = '新闻列表';
?>

<div class="news-background">
    <div class="container">

        <h1 class="text-center my-5 font-weight-bold text-white">新闻列表</h1>

        <div class="row">
            <!-- 循环新闻 -->
            <?php foreach ($news as $item): ?>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card shadow-sm rounded news-card">
                        <div class="card-body">
                            <h5 class="card-title">
                                <!-- 点击新闻标题时跳转到新闻 URL -->
                                <a href="<?= Url::to(['news/view', 'id' => $item->id]) ?>" class="news-title-link"><?= Html::encode($item->title) ?></a>
                            </h5>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <!-- 分页 -->
        <div class="text-center mt-4">
            <?= LinkPager::widget([
                'pagination' => $pagination,
                'nextPageLabel' => '下一页',
                'prevPageLabel' => '上一页',
                'maxButtonCount' => 5,
                'options' => ['class' => 'pagination justify-content-center'],
                'linkOptions' => ['class' => 'page-link'],
            ]) ?>
        </div>
    </div>
</div>

<!-- 自定义样式 -->
<style>
    /* 页面背景 */
    .news-background {
        background-color: #87CEFA;
        padding: 50px 0;
        border: none;
        border-radius: 5px;
    }

    body {
        background: url('/advanced/frontend/assets/images/background.jpg') no-repeat center center fixed;
        background-size: cover;
        color: #fff;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* 新闻卡片样式 */
    .news-card {
        background-color: #ffffff;
        border: none;
        border-radius: 5px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        overflow: hidden;
    }

    .news-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    /* 新闻标题样式 */
    .news-title-link {
        color: #333;
        text-decoration: none;
        font-size: 1.25rem;
        font-weight: 600;
    }

    .news-title-link:hover {
        color: #007bff;
        text-decoration: underline;
    }

    /* 分页样式 */
    .pagination .page-link {
        color: #007bff;
        background-color: #fff;
        border: 1px solid #ddd;
        padding: 8px 16px;
        font-size: 0.875rem;
        margin: 0 4px;
        border-radius: 5px;
    }

    .pagination .page-link:hover {
        color: #0056b3;
        background-color: #f0f0f0;
    }

    .pagination .active .page-link {
        background-color: #007bff;
        border-color: #007bff;
        color: #fff;
    }

    /* 卡片标题的字体样式 */
    .card-title {
        font-size: 1.1rem;
        font-weight: 600;
        color: #333;
    }

    /* 卡片内的文本样式 */
    .card-body {
        padding: 20px;
    }

    /* 调整页面响应式布局 */
    @media (max-width: 767px) {
        .col-lg-4 {
            max-width: 100%;
        }
    }
    .row {
        margin-left: -5px;
        margin-right: 15px;
    }
</style>
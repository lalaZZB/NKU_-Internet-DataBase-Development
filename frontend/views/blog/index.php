<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = '博客广场';
?>

<!-- 发布博客按钮固定在右上角 -->
<div class="fixed-button">
    <?= Html::a('发布博客', ['blog/create'], ['class' => 'btn btn-success btn-lg']) ?>
</div>

<!-- 页面标题 -->
<h1 class="text-center mb-4">博客广场</h1>

<div class="row">
    <?php foreach ($blogs as $blog): ?>
        <div class="col-md-4 mb-4">
            <div class="card shadow-lg h-100 d-flex flex-column" style="background-color: #f8f9fa;">
                <div class="card-body d-flex flex-column justify-content-center align-items-center">
                    <!-- 卡片标题居中且醒目 -->
                    <h5 class="card-title text-center font-weight-bold text-dark" style="font-size: 1.2rem; line-height: 1.4;">
                        <?= Html::a(Html::encode($blog->title), ['blog/view', 'id' => $blog->id], ['class' => 'text-dark text-decoration-none']) ?>
                    </h5>
                    <!-- 发布者与发布时间 -->
                    <p class="card-text text-muted text-center">
                        <strong>发布者:</strong> <?= Html::encode($blog->author->username) ?>
                    </p>
                    <p class="card-text text-muted text-center">
                        <strong>发布时间:</strong> <?= Yii::$app->formatter->asDatetime($blog->created_at) ?>
                    </p>

                    <!-- 博客内容摘要 -->
                    <p class="card-text text-center" style="font-size: 0.95rem;">
                        <?= Html::encode(substr($blog->content, 0, 150)) ?>...
                    </p>

                    <!-- 点赞按钮 -->
                    <div class="d-flex justify-content-between align-items-center">
                        <p class="card-text mb-0">
                            <strong>点赞数:</strong> <?= Html::encode($blog->likes_count) ?>
                        </p>
                        <?= Html::a('点赞', ['blog/like', 'id' => $blog->id], ['class' => 'btn btn-outline-primary btn-sm']) ?>
                    </div>
                </div>

                <!-- 评论区域：固定在卡片底部 -->
                <div class="card-footer mt-auto">
                    <div class="comments">
                        <h6>评论:</h6>
                        <?php foreach ($blog->comments as $comment): ?>
                            <div class="comment-item mb-2">
                                <p><strong><?= Html::encode($comment->user->username) ?>:</strong> <?= Html::encode($comment->content) ?></p>
                            </div>
                        <?php endforeach; ?>

                        <h6 class="mt-3">发表评论:</h6>
                        <form action="<?= \yii\helpers\Url::to(['blog/comment', 'id' => $blog->id]) ?>" method="post">
                            <textarea name="content" class="form-control mb-2" rows="3" required></textarea>
                            <button type="submit" class="btn btn-success btn-sm w-100">发表评论</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<!-- 分页 -->
<div class="pagination text-center mt-4">
    <?= LinkPager::widget([
        'pagination' => $pagination,
        'options' => ['class' => 'pagination justify-content-center'],
        'linkOptions' => ['class' => 'page-link'],
        'activePageCssClass' => 'page-item active',
        'disabledPageCssClass' => 'page-item disabled',
        'prevPageCssClass' => 'page-item',
        'nextPageCssClass' => 'page-item',
        'firstPageCssClass' => 'page-item',
        'lastPageCssClass' => 'page-item'
    ]) ?>
</div>

<!-- CSS 样式 -->
<style>
    .fixed-button {
        position: absolute;
        top: 100px;  /* 距离顶部的距离 */
        right: 20px; /* 距离右边的距离 */
        z-index: 1000;  /* 确保按钮在其他内容之上 */
    }

    /* 背景样式 */
    body {
        background: url('/advanced/frontend/assets/images/background.jpg') no-repeat center center fixed;
        background-size: cover;
    }

    /* 卡片标题样式 */
    .card-title {
        font-size: 1.5rem;
        font-weight: 700;
        color: #333;
    }

    /* 卡片底部添加一些阴影 */
    .card {
        border-radius: 10px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* 每个卡片的背景颜色 */
    .card:nth-child(odd) {
        background-color: #5F9EA0;
    }

    .card:nth-child(even) {
        background-color: #f1f3f5;
    }
</style>
<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the view of frontend.
 */
use yii\helpers\Html;

$this->title = $blog->title;
?>

<div class="blog-view container mt-5">
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <!-- 博客标题 -->
            <h1 class="display-4"><?= Html::encode($blog->title) ?></h1>
            
            <!-- 博客的作者和发布时间 -->
            <p class="text-muted">
                <strong>发布者:</strong> <?= Html::encode($blog->author->username) ?>
                &nbsp;|&nbsp;
                <strong>发布时间:</strong> <?= Yii::$app->formatter->asDatetime($blog->created_at) ?>
            </p>
            
            <!-- 博客内容 -->
            <div class="blog-content mt-4">
                <p><?= Html::encode($blog->content) ?></p>
            </div>

            <!-- 点赞数 -->
            <p class="mt-3">
                <strong>点赞数:</strong> <?= Html::encode($blog->likes_count) ?>
                <?= Html::a('点赞', ['blog/like', 'id' => $blog->id], ['class' => 'btn btn-outline-primary btn-sm ml-3']) ?>
            </p>
        </div>
    </div>

    <!-- 评论区 -->
    <div class="comments mt-4">
        <h4>评论:</h4>
        <?php if (count($blog->comments) > 0): ?>
            <?php foreach ($blog->comments as $comment): ?>
                <div class="comment-item mb-3">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <p><strong><?= Html::encode($comment->user->username) ?>:</strong></p>
                            <p><?= Html::encode($comment->content) ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>暂无评论</p>
        <?php endif; ?>

        <!-- 评论表单 -->
        <h5 class="mt-4">发表评论:</h5>
        <form action="<?= \yii\helpers\Url::to(['blog/comment', 'id' => $blog->id]) ?>" method="post">
            <textarea name="content" class="form-control mb-3" rows="4" placeholder="请输入评论..." required></textarea>
            <button type="submit" class="btn btn-success">发表评论</button>
        </form>
    </div>
</div>
<style>
   /* 博客页面样式 */
.blog-view .card {
    border-radius: 10px;
}

/* 标题样式 */
.blog-view h1 {
    font-size: 2.5rem;
    font-weight: bold;
}

/* 评论区样式 */
.comments {
    margin-top: 30px;
}

.comment-item .card {
    border-radius: 10px;
    margin-top: 10px;
}

.comment-item .card-body {
    background-color: #f8f9fa;
}

/* 点赞按钮 */
.btn-outline-primary {
    border-radius: 20px;
    transition: background-color 0.3s;
}

.btn-outline-primary:hover {
    background-color: #007bff;
    color: white;
}

/* 评论表单 */
textarea.form-control {
    border-radius: 8px;
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

/* 提交按钮 */
.btn-success {
    border-radius: 20px;
    box-shadow: 0px 4px 8px rgba(0, 123, 255, 0.2);
    transition: background-color 0.3s;
}

.btn-success:hover {
    background-color: #28a745;
    color: white;
}

/* 页面布局 */
.container {
    max-width: 800px;
}
 
</style>
<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the view of frontend.
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
ini_set("error_reporting","E_ALL & ~E_NOTICE");
$this->title = $video->title;
?>

<!-- 页面主标题 -->
<h1 class="video-title"><?= Html::encode($video->title) ?></h1>
<p class="video-date"><small>发布时间：<?= Yii::$app->formatter->asDatetime($video->created_at) ?></small></p>

<!-- 视频容器 -->
<div class="video-container">
    <!-- 视频播放器 -->
    <video class="video-player" controls>
        <source src="<?= Html::encode($video->url) ?>" type="video/mp4">
        您的浏览器不支持视频播放。
    </video>
</div>

<!-- 视频描述 -->
<p class="video-description"><?= nl2br(Html::encode($video->description)) ?></p>

<!-- 点赞功能 -->
<div class="like-section">
    <a href="<?= Url::to(['video/like', 'video_id' => $video->id]) ?>" class="like-btn <?= $isLiked ? 'liked' : '' ?>">
        <?= $isLiked ? '取消点赞' : '点赞' ?>
    </a>
    <span class="like-count"><?= $likeCount ?> 人点赞</span>
</div>

<!-- 评论区 -->
<h3 class="comments-title">评论</h3>

<?php if (Yii::$app->session->hasFlash('success')): ?>
    <div class="alert alert-success">
        <?= Yii::$app->session->getFlash('success') ?>
    </div>
<?php elseif (Yii::$app->session->hasFlash('error')): ?>
    <div class="alert alert-danger">
        <?= Yii::$app->session->getFlash('error') ?>
    </div>
<?php endif; ?>

<!-- 显示评论 -->
<?php foreach ($comments as $comment): ?>
    <div class="comment">
        <p><strong><?= Html::encode($comment->user->username) ?></strong> <?= Yii::$app->formatter->asDatetime($comment->created_at) ?></p>
        <p><?= Html::encode($comment->content) ?></p>
    </div>
<?php endforeach; ?>

<!-- 提交评论表单 -->
<?php $form = ActiveForm::begin([
    'action' => ['video/comment'],
    'method' => 'post',
]); ?>

<?= $form->field($model, 'content')->textarea(['rows' => 4, 'placeholder' => '请输入评论...'])->label(false) ?>

<?= Html::hiddenInput('video_id', $video->id) ?>

<div class="form-group">
    <?= Html::submitButton('提交评论', ['class' => 'btn btn-success']) ?>
</div>

<?php ActiveForm::end(); ?>

<!-- 返回按钮 -->
<a href="<?= Url::to(['video/index']) ?>" class="back-btn">返回列表</a>

<!-- 内联CSS样式 -->
<style>
    /* 页面标题 */
    .video-title {
        font-family: 'Roboto', sans-serif;
        font-size: 36px;
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    /* 发布时间 */
    .video-date {
        font-family: 'Arial', sans-serif;
        font-size: 14px;
        color: #777;
        text-align: center;
        margin-bottom: 20px;
    }

    /* 视频容器 */
    .video-container {
        max-width: 800px;
        margin: 0 auto;
        position: relative;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    /* 视频播放器 */
    .video-player {
        width: 100%;
        height: auto;
        display: block;
    }

    /* 视频描述 */
    .video-description {
        font-family: 'Arial', sans-serif;
        font-size: 16px;
        color: #555;
        line-height: 1.6;
        max-width: 800px;
        margin: 20px auto;
        text-align: justify;
    }

    /* 点赞按钮样式 */
    .like-section {
        text-align: center;
        margin: 20px 0;
    }

    .like-btn {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    .like-btn:hover {
        background-color: #0056b3;
    }

    .like-btn.liked {
        background-color: #28a745;
    }

    .like-count {
        display: block;
        margin-top: 10px;
        font-size: 14px;
        color: #777;
    }

    /* 评论标题 */
    .comments-title {
        font-family: 'Arial', sans-serif;
        font-size: 24px;
        color: #333;
        margin-bottom: 15px;
        text-align: center;
    }

    /* 评论列表 */
    .comment {
        background-color: #f9f9f9;
        padding: 15px;
        border-radius: 8px;
        margin-bottom: 15px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .comment p {
        margin: 5px 0;
    }

    /* 提交评论按钮样式 */
    .form-group {
        text-align: center;
    }

    /* 返回按钮 */
    .back-btn {
        position: absolute;
        right: 20px;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
        transition: background-color 0.3s, transform 0.3s;
    }

    /* 返回按钮悬停效果 */
    .back-btn:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
    }
</style>
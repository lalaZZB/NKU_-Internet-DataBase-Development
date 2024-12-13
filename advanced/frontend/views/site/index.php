<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application (主页)';
?>
<div class="site-index">

    <!-- 轮播图 -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/advanced/frontend/assets/images/news.png" class="d-block w-100" alt="新闻1">
                <div class="carousel-caption d-none d-md-block">
                    <h5>重要新闻标题 1</h5>
                    <p>这是一段新闻简述内容，吸引用户点击了解详情。</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/advanced/frontend/assets/images/blog.png" class="d-block w-100" alt="新闻2">
                <div class="carousel-caption d-none d-md-block">
                    <h5>重要新闻标题 2</h5>
                    <p>这是一段新闻简述内容，吸引用户点击了解详情。</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/advanced/frontend/assets/images/video.png" class="d-block w-100" alt="博客文章">
                <div class="carousel-caption d-none d-md-block">
                    <h5>热门博客文章</h5>
                    <p>分享有价值的内容，吸引读者阅读和互动。</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- 页面主内容 -->
    <div class="body-content" style="margin-top: 50px;">

        <div class="row">
            <div class="col-lg-4 text-center">
                <h2>新闻分类</h2>
                <p>浏览最新新闻分类，快速找到您感兴趣的内容。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=news%2Findex">查看新闻 &raquo;</a></p>
            </div>
            <div class="col-lg-4 text-center">
                <h2>博客精选</h2>
                <p>阅读精选博客文章，分享独特的观点和见解。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=blog%2Findex">阅读博客 &raquo;</a></p>
            </div>
            <div class="col-lg-4 text-center">
                <h2>视频中心</h2>
                <p>观看热门视频，了解最新动态和趣闻。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=video%2Findex">观看视频 &raquo;</a></p>
            </div>
        </div>
    </div>
</div>

<!-- 添加自定义样式 -->
<style>
    .carousel-caption h5 {
        font-size: 1.5rem;s
        font-weight: bold;
    }
    .carousel-caption p {
        font-size: 1rem;
    }
    .body-content h2 {
        font-size: 1.8rem;
        font-weight: 500;
    }
    .btn-primary {
        background-color: #3b5998;
        border-color: #3b5998;
    }
    .btn-primary:hover {
        background-color: #8b9dc3;
        border-color: #8b9dc3;
    }
</style>

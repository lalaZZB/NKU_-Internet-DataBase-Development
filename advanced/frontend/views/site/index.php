<div class="site-index">

    <!-- 轮播图 -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <!-- 第一个轮播项 -->
            <div class="carousel-item active">
                <a href="https://www.openai.com" target="_blank">
                    <img src="/advanced/frontend/assets/images/openai.jpg" class="d-block w-100 rounded" alt="OpenAI">
                </a>
                <div class="carousel-caption d-none d-md-block">
                    <h5>OpenAI</h5>
                    <p>点击跳转官网</p>
                </div>
            </div>
            <!-- 第二个轮播项 -->
            <div class="carousel-item">
                <a href="https://copilot.github.com" target="_blank">
                    <img src="/advanced/frontend/assets/images/copilot.png" class="d-block w-100 rounded" alt="Copilot">
                </a>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Copilot</h5>
                    <p>点击跳转官网</p>
                </div>
            </div>
            <!-- 第三个轮播项 -->
            <div class="carousel-item">
                <a href="https://www.anthropic.com/claude" target="_blank">
                    <img src="/advanced/frontend/assets/images/claude.png" class="d-block w-100 rounded" alt="Claude">
                </a>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Claude</h5>
                    <p>点击跳转官网</p>
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
            <!-- 新闻分类模块 -->
            <div class="col-lg-3 text-center module">
                <h2>新闻分类</h2>
                <p>浏览最新新闻分类，快速找到您感兴趣的内容。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=news%2Findex">查看新闻 &raquo;</a></p>
            </div>
            <!-- 博客精选模块 -->
            <div class="col-lg-3 text-center module">
                <h2>博客精选</h2>
                <p>阅读精选博客文章，分享独特的观点和见解。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=blog%2Findex">阅读博客 &raquo;</a></p>
            </div>
            <!-- 视频中心模块 -->
            <div class="col-lg-3 text-center module">
                <h2>视频中心</h2>
                <p>观看热门视频，了解最新动态和趣闻。</p>
                <p><a class="btn btn-primary" href="/advanced/frontend/web/index.php?r=video%2Findex">观看视频 &raquo;</a></p>
            </div>
        </div>
    </div>
</div>

<!-- 添加自定义样式 -->
<style>
    body {
        background: url('/advanced/frontend/assets/images/background.jpg') no-repeat center center fixed;
        background-size: cover;
    }

    /* 轮播图样式 */
    .carousel-item img {
        width: 100%;
        height: 450px; /* 统一高度 */
        object-fit: cover; /* 图片按比例填充，裁剪多余部分 */
        border-radius: 60px; /* 圆角效果 */
    }

    .carousel-caption h5 {
        font-size: 1.5rem;
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

    /* 模块样式 */
    .module {
        background: #63A1E8;
        padding: 20px;
        margin-bottom: 50px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
    }

    .module:hover {
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* 模块 hover 时的阴影效果 */
    }

    .module h2 {
        font-size: 1.8rem;
        color: #333;
    }

    .module p {
        font-size: 1rem;
        color: #666;
    }

    /* 调整模块间的距离 */
    .row {
        gap: 70px; /* 增加模块间的间距 */
    }
</style>
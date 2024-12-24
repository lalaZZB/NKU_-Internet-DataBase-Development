<?php
use yii\helpers\Url;
/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <!-- 上半部分：网站介绍 -->
    <div class="about-info">
        <h1><?= Html::encode($this->title) ?></h1>
        <p>欢迎来到我们的AI博客网站！本网站是应南开大学“互联网数据库开发”课程作业要求，由南开大学的四位本科生搭建的，致力于传播AI新闻以及相关知识，并为感兴趣的人提供一个可以随心交流的平台！</p>
    </div>

    <!-- 下半部分：团队成员 -->
    <div class="team-section">
        <h2>我们的团队</h2>
        
        <div class="team-member">
            <div class="member-avatar">
                <img src="/advanced/frontend/assets/images/zzb.png" alt="团队成员1">
            </div>
            <div class="member-info">
                <h3>秦泽斌</h3>
                <p>组长</p>
                <p>负责项目整体策划并协调工作，设计并搭建网站前端，数据库设计，前后端对接工作，文档编写</p>
            </div>
        </div>

        <div class="team-member">
            <div class="member-avatar">
                <img src="/advanced/frontend/assets/images/cmy.png" alt="团队成员2">
            </div>
            <div class="member-info">
                <h3>蔡铭宇</h3>
                <p>组员</p>
                <p>负责网站后端的总体搭建，按照前端需求灵活设计，文档编写</p>
            </div>
        </div>

        <div class="team-member">
            <div class="member-avatar">
                <img src="/advanced/frontend/assets/images/myj.png" alt="团队成员3">
            </div>
            <div class="member-info">
                <h3>米宇杰</h3>
                <p>组员</p>
                <p>负责网站后端的优化以及细节设计，辅助完成前后端对接工作，文档编写</p>
            </div>
        </div>

        <div class="team-member">
            <div class="member-avatar">
                <img src="/advanced/frontend/assets/images/fmh.png" alt="团队成员4">
            </div>
            <div class="member-info">
                <h3>方沐华</h3>
                <p>组员</p>
                <p>负责数据搜集，包括新闻、视频、图片等等建站资源，数据库填充，文档编写</p>
            </div>
        </div>
    </div>
    <p>
            <a href="<?= Url::to(['site/download']) ?>" class="btn btn-primary">下载个人 / 团队作业</a>
        </p>
</div>

<!-- 页面内联样式 -->
<style>
        /* 背景样式 */
    body {
        background: url('/advanced/frontend/assets/images/background.jpg') no-repeat center center fixed;
        background-size: cover;
    }
    /* 整体页面布局 */
    .site-about {
        padding: 40px;
        background-color: #f9f9f9;
    }

    /* 网站介绍区域 */
    .about-info {
        text-align: center;
        margin-bottom: 40px;
    }

    .about-info h1 {
        font-size: 3rem;
        margin-bottom: 20px;
    }

    .about-info p {
        font-size: 1.2rem;
        line-height: 1.6;
        max-width: 800px;
        margin: 0 auto;
    }

    /* 团队介绍区域 */
    .team-section {
        margin-top: 40px;
    }

    .team-section h2 {
        font-size: 2rem;
        text-align: center;
        margin-bottom: 30px;
    }

    /* 每个团队成员的布局 */
    .team-member {
        display: flex;
        align-items: center;
        margin-bottom: 30px;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
    }

    /* 头像部分 */
    .member-avatar {
        margin-right: 20px;
        width: 80px;
        height: 80px;
        border-radius: 50%;
        overflow: hidden;
        border: 3px solid #007bff;
    }

    .member-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    /* 成员信息部分 */
    .member-info h3 {
        font-size: 1.5rem;
        font-weight: 600;
    }

    .member-info p {
        font-size: 1rem;
        color: #555;
    }

    /* 响应式设计 */
    @media (max-width: 768px) {
        .team-member {
            flex-direction: column;
            text-align: center;
        }

        .member-avatar {
            margin: 0 auto 20px auto;
        }
    }
</style>
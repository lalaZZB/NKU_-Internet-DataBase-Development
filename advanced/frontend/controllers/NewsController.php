<?php
namespace frontend\controllers;

use app\models\News;
use yii\data\Pagination;
use yii\web\Controller;

class NewsController extends Controller
{
    // 新闻列表页
    public function actionIndex()
    {
        // 查询所有新闻
        $query = News::find();

        // 分页配置
        $pagination = new Pagination([
            'defaultPageSize' => 5, // 每页显示5条新闻
            'totalCount' => $query->count(), // 新闻总数
        ]);

        // 获取分页后的新闻数据
        $news = $query->orderBy('created_at DESC')
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        // 渲染视图
        return $this->render('index', [
            'news' => $news,
            'pagination' => $pagination,
        ]);
    }

    // 新闻详情页
    public function actionView($id)
    {
        // 查找指定ID的新闻
        $news = News::findOne($id);

        if (!$news) {
            throw new \yii\web\NotFoundHttpException('新闻不存在');
        }

        // 渲染视图
        return $this->render('view', [
            'news' => $news,
        ]);
    }
}

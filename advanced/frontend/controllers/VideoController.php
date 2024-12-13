<?php
namespace frontend\controllers;

use app\models\Video;
use yii\data\Pagination;
use yii\web\Controller;

class VideoController extends Controller
{
    // 视频列表页
    public function actionIndex()
    {
        // 查询所有视频
        $query = Video::find();

        // 分页配置
        $pagination = new Pagination([
            'defaultPageSize' => 5, // 每页显示5个视频
            'totalCount' => $query->count(), // 视频总数
        ]);

        // 获取分页后的视频数据
        $videos = $query->orderBy('created_at DESC')
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        // 渲染视图
        return $this->render('index', [
            'videos' => $videos,
            'pagination' => $pagination,
        ]);
    }

    // 视频详情页
    public function actionView($id)
    {
        // 查找指定ID的视频
        $video = Video::findOne($id);

        if (!$video) {
            throw new \yii\web\NotFoundHttpException('视频不存在');
        }

        // 渲染视图
        return $this->render('view', [
            'video' => $video,
        ]);
    }
}

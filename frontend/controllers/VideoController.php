<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the controller of frontend.
 */
namespace frontend\controllers;

use app\models\Video;
use app\models\VideoComment;
use app\models\VideoLike;
use yii\data\Pagination;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use Yii;

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

    // 初始化评论模型
    $model = new \app\models\VideoComment();

    // 获取与该视频关联的评论
    $comments = \app\models\VideoComment::find()
        ->where(['video_id' => $id])
        ->orderBy(['created_at' => SORT_DESC])
        ->all();

    // 传递数据到视图
    return $this->render('view', [
        'video' => $video,
        'model' => $model,
        'comments' => $comments,
        'isLiked' => $this->checkIfLiked($id), // 检查是否已点赞
        'likeCount' => $video->LikeCount,    // 点赞数量
    ]);
}
protected function checkIfLiked($videoId)
{
    // 如果用户未登录，直接返回 false
    if (Yii::$app->user->isGuest) {
        return false;
    }

    // 查询点赞记录
    $userId = Yii::$app->user->id;
    return (bool)\app\models\VideoLike::find()
        ->where(['video_id' => $videoId, 'user_id' => $userId])
        ->exists();
}
    // 提交评论
    public function actionComment()
    {
        if (Yii::$app->request->isPost) {
            // 确保视频ID和内容有效
            $video_id = Yii::$app->request->post('video_id');
            $content = Yii::$app->request->post('content');
    
            if (empty($video_id) ) {
                Yii::$app->session->setFlash('error', '视频ID不能为空');
                return $this->redirect(['video/view', 'id' => $video_id]);
            }
    
            $comment = new VideoComment();
            $comment->video_id = $video_id;
            $comment->user_id = Yii::$app->user->id;
    
            // 添加一些验证
            $comment->content = $content;
    
            // 验证并保存
            if ($comment->validate() && $comment->save()) {
                Yii::$app->session->setFlash('success', '评论成功');
            } else {
                Yii::$app->session->setFlash('error', '评论失败');
                // 打印错误信息以便调试
                Yii::error($comment->errors);
            }
        }
    
        return $this->redirect(['video/view', 'id' => Yii::$app->request->post('video_id')]);
    }
    

    // 点赞功能
    public function actionLike($video_id)
    {
        $user_id = Yii::$app->user->id;

        // 检查是否已点赞
        $like = VideoLike::findOne(['video_id' => $video_id, 'user_id' => $user_id]);

        if ($like) {
            // 取消点赞
            $like->delete();
        } else {
            // 添加点赞
            $like = new VideoLike();
            $like->video_id = $video_id;
            $like->user_id = $user_id;
            $like->save();
        }

        return $this->redirect(['video/view', 'id' => $video_id]);
    }
}

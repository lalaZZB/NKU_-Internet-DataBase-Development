<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the controller of frontend.
 */
namespace frontend\controllers;

use Yii;
use app\models\Blog;
use app\models\Comment;
use app\models\Like;
use yii\web\Controller;
use yii\data\Pagination;

class BlogController extends Controller
{
    public $enableCsrfValidation = false;

    public function actionIndex()
    {
        $query = Blog::find()->orderBy(['created_at' => SORT_DESC]);
        $pagination = new Pagination([
            'defaultPageSize' => 10,
            'totalCount' => $query->count(),
        ]);

        $blogs = $query->offset($pagination->offset)
                       ->limit($pagination->limit)
                       ->all();

        return $this->render('index', [
            'blogs' => $blogs,
            'pagination' => $pagination,
        ]);
    }

    public function actionLike($id)
    {
        if (Yii::$app->user->isGuest) {
            return $this->redirect(['user/login']);
        }

        $userId = Yii::$app->user->id;
        $blog = Blog::findOne($id);

        if (!$blog) {
            throw new \yii\web\NotFoundHttpException('博客未找到');
        }

        // Check if the user already liked the blog
        if (Like::find()->where(['blog_id' => $id, 'user_id' => $userId])->exists()) {
            return $this->redirect(['blog/index']);
        }

        // Create new like record
        $like = new Like();
        $like->blog_id = $id;
        $like->user_id = $userId;
        $like->save();

        // Update likes count
        $blog->likes_count++;
        $blog->save();

        return $this->redirect(['blog/index']);
    }

    public function actionComment($id)
    {
        if (Yii::$app->user->isGuest) {
            return $this->redirect(['user/login']);
        }

        $comment = new Comment();
        $comment->blog_id = $id;
        $comment->user_id = Yii::$app->user->id;
        $comment->content = Yii::$app->request->post('content');
        $comment->save();

        return $this->redirect(['blog/index']);
    }
    public function actionCreate()
{
    $blog = new Blog();

    if ($blog->load(Yii::$app->request->post()) && $blog->save()) {
        return $this->redirect(['blog/index']);
    }

    return $this->render('create', ['blog' => $blog]);
}
public function actionView($id)
{
    $blog = Blog::findOne($id);
    
    if (!$blog) {
        throw new \yii\web\NotFoundHttpException('博客未找到');
    }

    return $this->render('view', ['blog' => $blog]);
}


}

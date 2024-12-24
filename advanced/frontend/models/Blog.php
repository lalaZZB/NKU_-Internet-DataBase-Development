<?php
namespace app\models;

use Yii;
use yii\db\ActiveRecord;

class Blog extends ActiveRecord
{
    // 设置对应的数据库表名
    public static function tableName()
    {
        return 'blog';
    }

    // 定义规则，设置属性的验证规则
    public function rules()
    {
        return [
            [['title', 'content', 'author_id'], 'required'], // title, content, author_id 都是必填项
            [['content'], 'string'], // content 字段是字符串类型
            [['likes_count'], 'integer'], // likes_count 字段是整数类型
            [['created_at', 'updated_at'], 'safe'], // created_at 和 updated_at 字段为日期类型
            [['title'], 'string', 'max' => 255], // title 最大长度 255
            [['author_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['author_id' => 'id']], // author_id 必须是有效的用户 ID
        ];
    }

    // 定义与 Comment 模型的关联
    public function getComments()
    {
        return $this->hasMany(Comment::class, ['blog_id' => 'id']);
    }

    // 定义与 Like 模型的关联
    public function getLikes()
    {
        return $this->hasMany(Like::class, ['blog_id' => 'id']);
    }

    // 定义与 User 模型的关联，用于获取作者信息
    public function getAuthor()
    {
        return $this->hasOne(User::class, ['id' => 'author_id']);
    }
}

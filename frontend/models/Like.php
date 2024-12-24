<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the model of frontend.
 */
namespace app\models;

use Yii;
use yii\db\ActiveRecord;

class Like extends ActiveRecord
{
    // 设置对应的数据库表名
    public static function tableName()
    {
        return 'like';
    }

    // 定义规则，设置属性的验证规则
    public function rules()
    {
        return [
            [['blog_id', 'user_id'], 'required'], // blog_id 和 user_id 都是必填项
            [['blog_id', 'user_id'], 'integer'], // blog_id 和 user_id 字段是整数类型
            [['created_at'], 'safe'], // created_at 字段为日期类型
            [['blog_id', 'user_id'], 'unique', 'targetAttribute' => ['blog_id', 'user_id']], // blog_id 和 user_id 唯一组合
            [['blog_id'], 'exist', 'skipOnError' => true, 'targetClass' => Blog::class, 'targetAttribute' => ['blog_id' => 'id']], // blog_id 必须存在于 blog 表
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['user_id' => 'id']], // user_id 必须存在于 user 表
        ];
    }

    // 定义与 Blog 模型的关联
    public function getBlog()
    {
        return $this->hasOne(Blog::class, ['id' => 'blog_id']);
    }

    // 定义与 User 模型的关联，用于获取点赞者信息
    public function getUser()
    {
        return $this->hasOne(User::class, ['id' => 'user_id']);
    }
}

<?php
namespace app\models;

use Yii;
use yii\db\ActiveRecord;

class VideoComment extends ActiveRecord
{
    public static function tableName()
    {
        return 'video_comment';
    }

    public function rules()
    {
        return [
            [['video_id', 'user_id', 'content'], 'required'],
            [['content'], 'string'],
            [['video_id', 'user_id'], 'integer'],
            [['created_at'], 'safe'],
        ];
    }

    // 评论与视频的关联
    public function getVideo()
    {
        return $this->hasOne(Video::class, ['id' => 'video_id']);
    }

    // 评论与用户的关联
    public function getUser()
    {
        return $this->hasOne(User::class, ['id' => 'user_id']);
    }
}

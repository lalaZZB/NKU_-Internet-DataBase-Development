<?php
namespace app\models;

use Yii;
use yii\db\ActiveRecord;

class VideoLike extends ActiveRecord
{
    public static function tableName()
    {
        return 'video_like';
    }

    public function rules()
    {
        return [
            [['video_id', 'user_id'], 'required'],
            [['video_id', 'user_id'], 'integer'],
            [['created_at'], 'safe'],
            [['video_id', 'user_id'], 'unique', 'targetAttribute' => ['video_id', 'user_id'], 'message' => 'You have already liked this video.'],
        ];
    }

    // 点赞与视频的关联
    public function getVideo()
    {
        return $this->hasOne(Video::class, ['id' => 'video_id']);
    }

    // 点赞与用户的关联
    public function getUser()
    {
        return $this->hasOne(User::class, ['id' => 'user_id']);
    }
}

<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "video_like".
 *
 * @property int $id
 * @property int $video_id
 * @property int $user_id
 * @property string|null $created_at
 */
class VideoLike extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'video_like';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['video_id', 'user_id'], 'required'],
            [['video_id', 'user_id'], 'integer'],
            [['created_at'], 'safe'],
            [['video_id', 'user_id'], 'unique', 'targetAttribute' => ['video_id', 'user_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'video_id' => 'Video ID',
            'user_id' => 'User ID',
            'created_at' => 'Created At',
        ];
    }
}

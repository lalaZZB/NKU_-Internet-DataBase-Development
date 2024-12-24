<?php

/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the model of frontend.
 */
namespace app\models;

use Yii;

/**
 * This is the model class for table "video".
 *
 * @property int $id
 * @property string $title
 * @property string|null $description
 * @property string $url
 * @property string|null $cover_image
 * @property string|null $created_at
 */
class Video extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'video';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'url'], 'required'],
            [['description'], 'string'],
            [['created_at'], 'safe'],
            [['title', 'url', 'cover_image'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'url' => 'Url',
            'cover_image' => 'Cover Image',
            'created_at' => 'Created At',
        ];
    }
    // 获取当前视频的点赞数
    public function getLikeCount()
    {
        return VideoLike::find()->where(['video_id' => $this->id])->count();
    }
}

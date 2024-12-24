<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the models of backend.
 */
namespace app\models;

use Yii;

/**
 * This is the model class for table "video_comment".
 *
 * @property int $id
 * @property int $video_id
 * @property int $user_id
 * @property string $content
 * @property string|null $created_at
 */
class VideoComment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'video_comment';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['video_id', 'user_id', 'content'], 'required'],
            [['video_id', 'user_id'], 'integer'],
            [['content'], 'string'],
            [['created_at'], 'safe'],
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
            'content' => 'Content',
            'created_at' => 'Created At',
        ];
    }
}

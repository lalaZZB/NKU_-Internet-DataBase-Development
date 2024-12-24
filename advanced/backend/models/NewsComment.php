<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "news_comments".
 *
 * @property int $id
 * @property int $news_id
 * @property string $content
 * @property string|null $created_at
 */
class NewsComment extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news_comments';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['news_id', 'content'], 'required'],
            [['news_id'], 'integer'],
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
            'news_id' => 'News ID',
            'content' => 'Content',
            'created_at' => 'Created At',
        ];
    }
}

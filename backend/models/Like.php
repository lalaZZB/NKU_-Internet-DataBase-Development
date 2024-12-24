<?php
/**
 * Team:芹菜米饭队,NKU
 * Coding by QinZebin 2212005
 * This is the models of backend.
 */
namespace app\models;

use Yii;

/**
 * This is the model class for table "like".
 *
 * @property int $id
 * @property int $blog_id
 * @property int $user_id
 * @property string|null $created_at
 */
class Like extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'like';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['blog_id', 'user_id'], 'required'],
            [['blog_id', 'user_id'], 'integer'],
            [['created_at'], 'safe'],
            [['blog_id', 'user_id'], 'unique', 'targetAttribute' => ['blog_id', 'user_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'blog_id' => 'Blog ID',
            'user_id' => 'User ID',
            'created_at' => 'Created At',
        ];
    }
}

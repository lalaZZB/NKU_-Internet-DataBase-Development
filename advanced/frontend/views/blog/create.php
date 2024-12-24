<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = '发布博客';
?>

<h1>发布博客</h1>

<?php $form = ActiveForm::begin(); ?>

    <?= $form->field($blog, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($blog, 'content')->textarea(['rows' => 6]) ?>

    <?= $form->field($blog, 'author_id')->hiddenInput(['value' => Yii::$app->user->id])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton('发布博客', ['class' => 'btn btn-primary']) ?>
    </div>

<?php ActiveForm::end(); ?>

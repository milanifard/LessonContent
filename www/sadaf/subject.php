<?php

include("header.inc.php");
include("classes/subject.class.php");

if(isset($_REQUEST["add_subject"])){
    $title = $_REQUEST["title"];
    $lessonId =(int) $_REQUEST["subjects"];
    $subjectId = Subject::GetLastID("subject") + 1;

    $isAddSubject =Subject::add($title);
    $isAddSubject_lesson =Subject::setLessonSubject($subjectId ,$lessonId);

    if($isAddSubject and  $isAddSubject_lesson){
      echo "<div class='alert alert-success' role='alert'>
      This is a success alert—check it out!
      </div>";
    }
   
}



        
HTMLBegin();      
?>
<body>

  <form class="col-md-10 bg-color bg-info text-white center" style="margin:5%; padding:15px;">
  <div class="form-group">
    <label for="subject">افزودن موضوع</label>
    <input name="title" type="text" class="form-control" id="subject"  placeholder="عنوان موضوع">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">درس</label>
        <select name="subjects" id="subjects" class="form-control">
                <?= Subject::getUserLesson(); ?>
        </select>
  </div>
  <button name="add_subject" type="submit" class="btn btn-primary">افزودن</button>
</form>

<?php
 if(isset($_REQUEST["edit"])){
  if(Subject::edit_subject($_REQUEST["sId"] ,$_REQUEST["sTitle"])){
    echo "<div class='col-md-10 alert alert-success' role='alert' style='margin:5%;'>
        با موفقیت بروزرسانی شد!
        </div>";
       }else{
        echo "<div class='col-md-10 alert alert-danger' role='alert' style='margin:5%;'>
        خطا در بروزرسانی
        </div>";
       }
}
 Subject::edit_subject_form();

?>

</body>
</html>
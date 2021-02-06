<?php


include("header.inc.php");
include("classes/Lesson.class.php");




HTMLBegin();
?>

<body>

<header class="col-md-13 bg-color bg-info text-white center" style="background-color: #f1f1f1;
  padding: 30px;
  text-align: center;">

<?php
if ($_GET['lessonid'])
{
$mysql = pdodb::getInstance();
		$query = "select lesson.title , lesson.code from sadaf.lesson
		where lesson.id = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($_GET['lessonid']));
        
		while($rec = $res->fetch())
		{
            echo '<h1>'.$rec["title"].'</h1>';
            echo '<p>کد '.$rec["code"].'</p>'; 
		}

}
                        ?>
</header>
   
<form method="post" class="col-md-12  center" style="margin-bottom:5%; margin-top:5%; padding:5px;">
        <input type="hidden" name="DeleteLesson" value="1">
            <table cellpadding="0" cellspacing="0" border="0" class="table   table-striped table-sm " ">
                <thead>
                    <tr>
                         <th width=1%;>&nbsp;</th>
                         <th> موضوعات درس </th>
<?php
if ($_GET['lessonid'])
{
$mysql = pdodb::getInstance();
		$query = "select subject.title , subjectId from sadaf.subject
		join sadaf.subject_lesson on subject.id = subject_lesson.subjectId
		join sadaf.lesson on lesson.id = subject_lesson.lessonId
		where lessonId = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($_GET['lessonid']));
        $i = 0; 
		while($rec = $res->fetch())
		{
			echo "<tr>";
            echo "<td>";
            echo ++$i;
            echo"</td>";
            echo "<td><a class='btn btn-primary'
             href='forum.php?subjectid=".$rec["subjectId"]."'>".$rec["title"]."</a></td>";
            echo "</tr>";
		}

}
                        ?>

                    </tr>
                </thead>


            </table>
            <a  style="margin-right:42vw;"  class='btn btn-danger btn-sm text-center' href='subject.php'> اضافه کردن</a>
        </form>

</body>

</html>
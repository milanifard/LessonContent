<?php

include("header.inc.php");
include("classes/Lesson.class.php");

//


HTMLBegin();
?>

<body>

    <header class="col-md-13 bg-color bg-info text-white center" style="background-color: #f1f1f1;
  padding: 30px;
  text-align: center;">

        <?php
        if ($_GET['lessonid']) {
            $mysql = pdodb::getInstance();
            $query = "select lesson.title , lesson.code from sadaf.lesson
		where lesson.id = ?; ";
            $mysql->Prepare($query);

            $res = $mysql->ExecuteStatement(array($_GET['lessonid']));

            while ($rec = $res->fetch()) {
                echo '<h1>' . $rec["title"] . '</h1>';
                echo '<p>کد ' . $rec["code"] . '</p>';
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
if ($_GET['lessonid']) {
    $mysql = pdodb::getInstance();
    $query = "select subject.title , subjectId from sadaf.subject
		join sadaf.subject_lesson on subject.id = subject_lesson.subjectId
		join sadaf.lesson on lesson.id = subject_lesson.lessonId
		where lessonId = ?; ";
    $mysql->Prepare($query);

    $res = $mysql->ExecuteStatement(array($_GET['lessonid']));
    $i = 0;
    while ($rec = $res->fetch()) {
        echo "<tr>";
        echo "<td>";

        echo "</td>";
        echo "<td><a class='btn btn-primary  text-white'
             >" . $rec["title"] . "</a>
             <br><br> <ul>";


        $query1 = "select title from sadaf.tag
		        join sadaf.subject_tag on subject_tag.tagId = tag.id 
		        where subjectId =" . $rec["subjectId"];
        $res1 = $mysql->Execute($query1);
        $i=0;
        while ($rec1 = $res1->fetch()) {
            if ($i==0) {
                echo "<li ><b>برچسب ها </b>";
            }
            echo "<ul><li>";
            echo $rec1["title"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }


        $query2 = "select title,page.id,description from sadaf.page
            join sadaf.subject_page on subject_page.pageId = page.id 
            where subjectId =" . $rec["subjectId"];
        $res2 = $mysql->Execute($query2);
       $i=0;
        while ($rec2 = $res2->fetch()) {
            if ($i==0) {
                echo "<li ><b>صفحات</b>";
            }
            echo "<ul><li>";
            echo $rec2["title"];
            echo "<br>";
            echo "<br>";
            echo $rec2["description"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }

        $query3 = "select title,description from sadaf.file
            join sadaf.subject_file on subject_file.fileId = file.id 
            where subjectId =" . $rec["subjectId"];
        $res3 = $mysql->Execute($query3);
        $i=0;
        while ($rec3 = $res3->fetch()) {
            if ($i==0) {
                echo "<li ><b>فایل ها</b>";
            }
            echo "<ul><li>";
            echo $rec3["title"];
            echo "<br>";
            echo "<br>";
            echo $rec3["description"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }

        $query4 = "select title,description from sadaf.folder
            join sadaf.subject_folder on subject_folder.folderId = folder.id 
            where subjectId =" . $rec["subjectId"];
        $res4 = $mysql->Execute($query4);
       $i=0;
        while ($rec4 = $res4->fetch()) {
            if ($i==0) {
                echo "<li ><b>پوشه ها</b>";
            }
            echo "<ul><li>";
            echo $rec4["title"];
            echo "<br>";
            echo "<br>";
            echo $rec4["description"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }
        $query5 = "select name,description from sadaf.attachment
        join sadaf.subject_attachment on subject_attachment.attachmentId = attachment.id 
        where subjectId =".$rec["subjectId"].";";
        $res5 = $mysql->Execute($query5);
        $i=0;
        while ($rec5 = $res5->fetch()) {
            if($i==0){
            echo "<li ><b>پیوند ها</b>";
            }
            echo "<ul><li>";
            echo $rec5["name"];
            echo "<br>";
            echo "<br>";
            echo $rec5["description"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }
        $query6 = "select forum_title,forum_description,forum_subject from sadaf.forums
    where forum_subject =" . $rec["subjectId"];
        $res6 = $mysql->Execute($query6);
        $i=0;
        
        while ($rec6 = $res6->fetch()) {
            if ($i==0) {
                echo "<li> <a href='forum.php?subjectid=" . $rec["subjectId"] . "'><b>تالار های گفت و گو</b></a>";
            }
            echo "<ul><li>";
            echo $rec6["forum_title"];
            echo "<br>";
            echo "<br>";
            echo $rec6["forum_description"];
            echo "</li>";
            echo "</ul></li>";
            $i++;
        }
        echo "</ul></td></tr>";
    }
}
?>

                    </tr>
                </thead>


            </table>
            <a  style=" margin-right:42vw;" class='btn btn-danger btn-sm text-center' href='subject.php'> اضافه کردن</a>
    </form>

</body>

</html>
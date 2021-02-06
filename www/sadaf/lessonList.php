<?php

include("header.inc.php");
include("classes/Lesson.class.php");
include("classes/subject.class.php");

HTMLBegin();

if(isset($_REQUEST["DeleteLesson"])){

    Lesson::DeleteLessons();
}

if(isset($_REQUEST["new"]))
{
    $_REQUEST["show_lesson"] = 1;
    $_REQUEST['mine'] = "mine1";
}

if(isset($_REQUEST["updateid"]))
{
    $_REQUEST["show_lesson"] = 1;
    $_REQUEST['mine'] = "mine1";
}



if(isset($_REQUEST["save"]))
{
    $mysql = pdodb::getInstance();

    if(isset($_REQUEST["updateid"]))
    {
        $up = $_REQUEST["updateid"];

        if(isset($_REQUEST["code"]))
        {
            $code = $_REQUEST["code"];
            $query = "update sadaf.lesson set code = $code where id = $up";
            $mysql->Prepare($query);
            $mysql->ExecuteStatement(array($_REQUEST["code"] , $_REQUEST["updateid"]));
        }
        else if(isset($_REQUEST["title"]))
        {
            $title = $_REQUEST["title"];
            $query = "update sadaf.lesson set title = $title where id = $up";
            $mysql->Prepare($query);
            $mysql->ExecuteStatement(array($_REQUEST["title"] , $_REQUEST["updateid"]));
        }

    }
    else {


        $code = $_REQUEST["code"];
        $title = $_REQUEST["title"];

        $mysql = pdodb::getInstance();
        $query = "insert into sadaf.lesson (";
        $query .= " id";
        $query .= ", code";
        $query .= ", title";
        $query .= ") values (";
        $query .= "? , ? ,?";
        $query .= ")";
        $ValueListArray = array();

        $id = Subject::GetLastID("lesson");
        if ($id == -1) {
            $id = 1;
        } else {
            $id = $id + 1;
        }

        $lessonid = $id;

        array_push($ValueListArray, $id);
        array_push($ValueListArray, $code);
        array_push($ValueListArray, $title);
        $mysql->Prepare($query);
        $res = $mysql->ExecuteStatement($ValueListArray);


        $mysql = pdodb::getInstance();
        $query = "insert into sadaf.person_lesson (";
        $query .= " id";
        $query .= ", personid";
        $query .= ", lessonid";
        $query .= ") values (";
        $query .= "? , ? ,?";
        $query .= ")";
        $ValueListArray = array();


        $id = Subject::GetLastID("person_lesson");
        if ($id == -1) {
            $id = 1;
        } else {
            $id = $id + 1;
        }

        $personid = (int)$_SESSION["PersonID"];

        array_push($ValueListArray, $id);
        array_push($ValueListArray, $personid);
        array_push($ValueListArray, $lessonid);
        $mysql->Prepare($query);
        $res = $mysql->ExecuteStatement($ValueListArray);

    }

}


?>

<body>
    <div class="col-md-11 mx-auto">

        <form class="col-md-12 bg-color bg-info text-white center" style="margin-bottom:5%; margin-top:5%; padding:5px;" >
            <div class="form-group ">
                درس های خودم<input type="radio" name="mine" value="others" style=" margin-right:5%;">
                درس های دیگران <input type="radio" name="mine" value="mine1" style="margin-right:2%; margin-top:2%; " checked>
            </div>
            <button name="show_lesson" type="submit" class="btn btn-primary " style="margin:1vw; margin-right:1.8vw;">نمایش</button>
        </form>

        <form method="post">
        <input type="hidden" name="DeleteLesson" value="1">
            <table class="table  table-bordered table-striped table-sm " ">
                <thead>
                    <tr>


                        <?php
                        if (isset($_REQUEST["show_lesson"])) {

                            if (isset($_REQUEST['mine'])) {

                                if ($_REQUEST['mine'] == "mine1") {

                                    echo "<tr>";
                                    echo "<td>کد:</td>";

                                    echo '<td colspan="4">
                                    <input type="text" name="code" id="code">
                                    </td>';

                                    echo "<tr>";
                                    echo "<td>درس:</td>";

                                    echo '<td colspan="2">
                                    <input type="text" name="title" id="title">
                                    </td>';
                                    echo "<tr>";

                                    echo "<td colspan='1' class='text-center'>
                                    <a class='btn btn-sm btn-secondary' href='LessonList.php?new=1'>جدید</a>
                                    </td>";

                                    echo '<td colspan="1" class="text-center">
                                    <input type="submit" value="ثبت درس" name="save" id="save" class="btn btn-sm btn-primary"
                                    </td>';
                                    echo "<tr>";

                                    echo '<th width=1%;>&nbsp;</th>';
                                    echo '<th  >کد</th>';
                                    echo "<th>درس</th>";
                                    echo "<th>ویرایش</th>";
                                    echo "<th>محتوا</th>";
                                    Lesson::getUserLesson();
                                    echo '<td colspan="4" class="text-center">
                                    <input type="submit" value="حذف" class="btn btn-danger btn-sm"
                                </td>';

                                } else if($_REQUEST['mine'] == "others") {
                                    
                                    echo '
                                    <th width=1%;>کد</th>
                                     <th>درس</th>
                                     <th>محتوا </th>';
                                    Lesson::getAllLessons();
                                }
                            }
                        }
                        ?>

                    </tr>
                    
                </thead>


            </table>
        </form>
    </div>
</body>

</html>
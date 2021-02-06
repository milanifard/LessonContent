<?php



include("header.inc.php");
include("classes/Forum.class.php");

$subjectid;
if ($_GET['subjectid'])
{
    $subjectid=$_GET['subjectid'];

}

if(isset($_POST['saveforum']))
{
    $isAddForum =Forum::add($subjectid,$_REQUEST['forum_title'],$_SESSION["PersonID"],$_REQUEST["status"],$_REQUEST["for_description"]);
    if($isAddForum){
        echo "<div class='alert alert-success' role='alert'>
        گفتگوی جدید ثبت شد!
        </div>";
      }
}


HTMLBegin();
?>

<body>

<header class="col-md-13 bg-color bg-info text-white center" style="background-color: #f1f1f1;
  padding: 30px;
  text-align: center;">

<?php
if ($_GET['subjectid'])
{
$mysql = pdodb::getInstance();
		$query = "select subject.title from sadaf.subject
		where subject.id = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($_GET['subjectid']));
        
		while($rec = $res->fetch())
		{
            echo '<h1>'.$rec["title"].'</h1>'; 
        }

}
                        ?>
</header>

<table class="table  table-bordered table-striped table-sm " style="margin-top:5vw">
        <thead>
            <tr>
            
            <th >موضوع گفتگو</th>
            <th>تاریخ ثبت</th>
            <th>شروع کننده</th>
            <th >وضعیت</th>
            <?php
            Forum::getSubjectForums($_GET['subjectid']);

            ?>
            </tr>
        </thead>


</table>
   
<form method="post" action="" style="margin-right: 5vw; ">
    <p>:موضوع گفتگو</p>  
    <input type="text" name="forum_title" />
    <p>:توضیحات گفتگو</p> 
    <textarea name="for_description" value="for_description" /></textarea>
    <p>:وضعیت</p>
    فعال<input type="radio" name="status" value="off" style=" margin-right:5%;">
     غیرفعال <input type="radio" name="status" value="on" style="margin-right:2%; " checked>
     <br>
    <input type="submit" value="ایجاد" name="saveforum" id="saveforum" class="btn btn-primary" style="margin-top: 1vw;" />
 </form>

</body>

</html>


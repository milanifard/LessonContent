<?php



include("header.inc.php");
include("classes/post.class.php");

$forumid;
if ($_GET['forumid'])
{
    $forumid=$_GET['forumid'];

}

if(isset($_POST['savepost']))
{

    $isAddForum =Post::add($forumid,$_REQUEST['content'],$_SESSION["PersonID"],$_REQUEST['topic']);

    if($isAddForum){
        echo "<div class='alert alert-success' role='alert'>
        This is a success alert—check it out!
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
if ($_GET['forumid'])
{
$mysql = pdodb::getInstance();
		$query = "select forums.forum_title,forums.forum_description from sadaf.forums
		where forums.forum_id = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($_GET['forumid']));
        
		while($rec = $res->fetch())
		{
            echo '<h1>'.$rec["forum_title"].'</h1>';
            echo '<h3>'.$rec["forum_description"].'</h3>';
        }

}
                        ?>
</header>

<table class="table  table-bordered table-striped table-sm ">
        <thead>
            <tr>
            <th >نویسنده</th>
            <th>موضوع</th>
            <th>&nbsp;</th>
            <th>تاریخ</th>
            <?php
            Post::getForumPosts($forumid);

            ?>
            </tr>
        </thead>


</table>
   
<form method="post" action="">
    <p>:موضوع پست</p>  
    <input type="text" name="topic" />
    <p>:توضیحات پست</p> 
    <textarea name="content" /></textarea>
    <br>
    <input type="submit" value="ایجاد" name="savepost" id="savepost" class="btn btn-primary" />
 </form>

</body>

</html>


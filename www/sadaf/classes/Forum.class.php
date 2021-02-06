<?php




class Forum{
    public $forum_id;
    public $forum_subject;
    public $forum_date;
    public $forum_lesson;
    public $forum_by;
    public $forum_status;


    public static function add($forum_subject,$forum_title,$forum_by,$forum_status,$forum_description){
        if(!isset($forum_subject) || !isset($forum_by)||!isset($forum_title)){return -1;}
		$mysql = pdodb::getInstance();
        $query='insert into sadaf.forums 
        (forum_subject,forum_date,forum_by,forum_status,forum_title,forum_description)
        values(?,NOW(),?,?,?,?);';

        
		$mysql->Prepare($query);
        $res = $mysql->ExecuteStatement(array($forum_subject,$forum_by,$forum_status,$forum_title,$forum_description));
		if($res)
		{
			return true;
        }
		return -1;
    }

    public static function GetLastID($table){
		$mysql = pdodb::getInstance();
        $query = "select max(id) from sadaf.".$table;
		$res = $mysql->Execute($query);
		if($rec=$res->fetch())
		{
			return $rec['max(id)'];
		}
		return -1;
		
    }

    public static function getSubjectForums($subjectid){
		
		$mysql = pdodb::getInstance();
		$query = "select forums.forum_title , forums.forum_date , persons.plname,persons.pfname,forums.forum_id, forums.forum_status from sadaf.forums
		join sadaf.persons on persons.PersonID = forums.forum_by
		join sadaf.subject on subject.id = forums.forum_subject
		where forums.forum_subject = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($subjectid));

        while($rec = $res->fetch())
    
		{

            echo "<tr>";
           
            echo "<td><a  href='post.php?forumid=".$rec["forum_id"]."'>".htmlentities($rec["forum_title"], ENT_QUOTES,"UTF-8")."</a></td>";
            echo "<td>".htmlentities($rec["forum_date"], ENT_QUOTES,"UTF-8")."</td>";
            echo "<td>".htmlentities($rec["pfname"], ENT_QUOTES,"UTF-8")." ".htmlentities($rec["plname"], ENT_QUOTES,"UTF-8")."</td>";
            if($rec["forum_status"]=="on"){
                echo "<td>باز</td>";
            }else{
                echo "<td>بسته</td>";
            }
            echo "</tr>";
		}
    }
}


?>
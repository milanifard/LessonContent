<?php




class Post{


    public static function add($post_forum,$post_content,$post_by,$post_topic){
        if(!isset($post_content) || !isset($post_by)||!isset($post_topic)){return -1;}
		$mysql = pdodb::getInstance();
        $query='insert into sadaf.posts 
        (post_content,post_date,post_by,post_topic,post_forum)
        values(?,NOW(),?,?,?);';

        
		$mysql->Prepare($query);
        $res = $mysql->ExecuteStatement(array($post_content,$post_by,$post_topic,$post_forum));
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

    public static function getForumPosts($forumid){
		
		$mysql = pdodb::getInstance();
		$query = "select posts.post_topic,posts.post_content , posts.post_date , persons.plname,persons.pfname,posts.post_id from sadaf.posts
		join sadaf.persons on persons.PersonID = posts.post_by
		join sadaf.forums on forums.forum_id = posts.post_forum
		where posts.post_forum = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($forumid));

        while($rec = $res->fetch())
    
		{

            echo "<tr>";
            echo "<td>".htmlentities($rec["pfname"], ENT_QUOTES,"UTF-8")." ".htmlentities($rec["plname"], ENT_QUOTES,"UTF-8")."</td>";
            echo "<td>".htmlentities($rec["post_topic"], ENT_QUOTES,"UTF-8")."</td>";
            echo "<td>".htmlentities($rec["post_content"], ENT_QUOTES,"UTF-8")."</td>";
            echo "<td>".htmlentities($rec["post_date"], ENT_QUOTES,"UTF-8")."</td>";
            
            echo "</tr>";
		}
    }
}


?>
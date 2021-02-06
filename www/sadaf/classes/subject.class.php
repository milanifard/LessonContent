<?php

class Subject{
    public $id;
    public $title;


    static function add($title){
        if(!isset($title)){return -1;}
        $k=0;
		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject (";
		$query .= " id";
		$query .= ", title";
		$query .= ") values (";
		$query .= "? , ? ";
		$query .= ")";
		$ValueListArray = array();


		$id = Subject::GetLastID("subject");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $title); 
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		if($rec = $res->fetch())
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

	public static function getUserLesson(){
		
		$userId = $_SESSION["PersonID"];
		$ValueListArray = array();
		
		$mysql = pdodb::getInstance();
		$query = "select * from persons
		join person_lesson on persons.PersonID=person_lesson.personid
		join lesson on lesson.id = person_lesson.lessonid
		where persons.PersonID=?";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($userId));

		$lesson="";
		while($rec = $res->fetch())
		{
			$lesson .="<option name='lesson'  value='".$rec['lessonid']."'>". $rec['title'] ."</option>";
		}
		return $lesson;
	}

	public static function setLessonSubject( $subjectID ,$lessonID){
		$userId = $_SESSION["UserID"];
		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into subject_lesson (subjectId , lessonId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($subjectID , $lessonID));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function getLessonSubject($lessonID){

		$ValueListArray = array();
		
		$mysql = pdodb::getInstance();
		$query = "select subject.title , subjectId from sadaf.subject
		join sadaf.subject_lesson on subject.id = subject_lesson.subjectId
		join sadaf.lesson on lesson.id = subject_lesson.lessonId
		where lessonId = ?; ";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($lessonID));

		$lesson="";
		while($rec = $res->fetch())
		{
			$lesson .="<option name='lesson'  value='".$rec['subjectId']."'>". $rec['title'] ."</option>";
		}
		return $lesson;
	}



	public static function edit_subject_form(){

		$userId = $_SESSION["PersonID"];
		$ValueListArray = array();
		
		$mysql = pdodb::getInstance();
		$query = "select * , lesson.title as lessonTitle , subject.title as subjectTitle  from lesson 
		join  subject_lesson on lesson.id = subject_lesson.lessonId
		join  subject on subject.id = subject_lesson.subjectId
		join person_lesson on lesson.id = person_lesson.lessonId 
		where personid =?";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array($userId));

		$row="";
		$i=1;
		while($rec = $res->fetch())
		{
			$row .='
			<form>		 
				<tr>
					<th scope="row">'.$i.'</th>
					<td>' .$rec["lessonTitle"]. '</td>
					<td> <input name="sTitle" type="text" value= "'.  $rec["subjectTitle"].'" ></td>
					<input name="sId" type="hidden" value= '. $rec["subjectId"] .' ">
					<td>
					<input type="submit" name="edit" class="btn btn-warning" value="ویرایش">	
					</td>
				</tr>
			</form>';
			  $i++;
		}


		echo '<table dir="rtl" class="col-md-10 table table-striped" >
		<thead>
		  <tr>
			<th scope="col">#</th>
			<th scope="col">درس</th>
			<th scope="col">موضوع</th>
			<th scope="col"></th>
		  </tr>
		</thead>
		<tbody>'.		
			$row
		.'</tbody>
	  </table>';
	}


	public static function edit_subject($sId , $newTitle){
		
		$ValueListArray = array();
		
		$mysql = pdodb::getInstance();
		$query = "UPDATE subject
		SET title = ?
		WHERE id = ?;";

		array_push($ValueListArray, $newTitle); 
		array_push($ValueListArray, $sId);

		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);

		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;

	}

}

?>
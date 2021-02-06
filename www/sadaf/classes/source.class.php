<?php

class source{

    public static function addAttachment(){
		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.attachment (";
		$query .= " id";
		$query .= ", name";
		$query .= ", description";
		$query .= ", attachment";
		$query .= ") values (";
		$query .= "? , ? , ? ,?";
		$query .= ")";
		$ValueListArray = array();


		$id = Subject::GetLastID("attachment");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $name); 
		array_push($ValueListArray, $description); 
		array_push($ValueListArray, $attachment); 
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	} 

	public static function tag_form($subjectId){
		echo "<form class=' col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;'>
        <div class='form-group'>
        <div class='form-group'>
		<label>نام تگ را وارد کنید</label>
		<input type='text' name='tag_name'>
		<input type='hidden'  name='subjectId' value= ".$subjectId.">
        </div>
         <button name='add_tag' type='submit' class='btn btn-primary'>ایجاد</button>
		</form>";
	}

	public static function add_tag($tagName ,$sId){
		
		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.tag (id , title) values(?,?);";
		$ValueListArray = array();


		$id = Subject::GetLastID("tag");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $tagName);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		source::add_subjectTag($sId ,$id);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectTag($subjectId ,$tagId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_tag (subjectId , tagId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$tagId));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function page_form($subjectId){
		echo "<form dir='rtl' class=' col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;'>
		<div class='form-group container'>
		
		<div class='row'>
			<label>عنوان صفحه را وارد کنید</label>
			<input name='title' type='text'>
		</div>
		</br>
		<div class='row'>
			<label>توضیحات</label>
			<input name='description' type='text'>
		</div>
		</br>

		<div class='row'>
			<label>محتوا (تا بارگذاری محل متن کمی صبر کنید)</label>
			</br>
			<textarea name='content'>محتوای خود را وارد کنید.</textarea>
			<input type='hidden'  name='subjectId' value= ".$subjectId.">
		</div>
		</br>
        </div>
         <button name='add_page' type='submit' class='btn btn-primary'>ایجاد</button>
		</form>";
		
	}

	public static function add_page($tagName , $description ,$content ,$sId){

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.page (id , title ,description ,content) values(?,?,?,?);";
		$ValueListArray = array();


		$id = Subject::GetLastID("page");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $tagName);
		array_push($ValueListArray, $description);
		array_push($ValueListArray, $content);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		source::add_subjectPage($id ,$sId);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectPage($subjectId ,$pageId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_page (subjectId , pageId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$pageId));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function file_form($subjectId){
		echo "<form dir='rtl' class='container col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;' method='post' enctype='multipart/form-data'>
		<div class='form-group'>

		<div class='row'>
		<label>عنوان فایل را وارد کنید</label>
		<input name='title' type='text'>
		</div>

		</br>

		<div class='row'>
		<label>توضیحات</label>
		<input name='description' type='text'>
		</div>

		</br>

		<div class='row'>
		<input type='file' name='fileToUpload' id='fileToUpload'>
		</div>

		</br>
		<input type='hidden'  name='subjectId' value= ".$subjectId.">
        </div>
         <button name='add_file' type='submit' class='btn btn-primary'>ایجاد</button>
        </form>";
	}

	public static function add_file($title ,$description ,$file ,$sId){

		$target_dir = "../uploads/";
		$target_file = $target_dir . basename($file["name"]);
		$uploadOk = 1;
		$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
		if (!file_exists('../uploads')) {
			mkdir('../uploads', 0777, true);
		}
		
		// Check if file already exists
		if (file_exists($target_file)) {
		  echo "Sorry, file already exists.";
		  $uploadOk = 0;
		}
		
		// Check file size
		if ($file["size"] > 500000) {
		  echo "Sorry, your file is too large.";
		  $uploadOk = 0;
		}
		
		// Allow certain file formats
		if($imageFileType != "jpg" 
		&& $imageFileType != "png" 
		&& $imageFileType != "jpeg"
		&& $imageFileType != "gif"
		&& $imageFileType != "pdf"  
		&& $imageFileType != "txt" 
		&& $imageFileType != "doc" ) {
		  echo "فرمت نامعتبر.";
		  $uploadOk = 0;
		}
		
		// Check if $uploadOk is set to 0 by an error
		if ($uploadOk == 0) {
		  echo "خطا در اپلود فایل";
		// if everything is ok, try to upload file
		} else {
		  if (move_uploaded_file($file["tmp_name"], $target_file)) {
			echo "The file ". htmlspecialchars( basename( $file["name"])). " has been uploaded.";	
			return source::store_file($file["name"] ,$description ,$target_file ,$sId);
		  } else {
			echo "Sorry, there was an error uploading your file.";
			return -1;
		  }
		}
	}

	public static function store_file($title ,$description ,$source ,$sId){
		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.file (title ,description ,src) values(?,?,?);";
		$ValueListArray = array();

		array_push($ValueListArray, $title);
		array_push($ValueListArray, $description);
		array_push($ValueListArray, $source);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		$id = Subject::GetLastID("file");
		source::add_subjectFile($sId ,$id);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectFile($subjectId ,$fileId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_file (subjectId , fileId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$fileId));
		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}


	public static function folder_form($subjectId){
		echo "<form dir='rtl'  class='container col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;'>
		<div class='row'>
			<label>عنوان پوشه را وارد کنید</label>
			<input name='title' type='text'>
		</div>
		</br>
		<div class='row'>
			<label>توضیحات</label>
			<input name='description' type='text'>
		</div>
		<input type='hidden'  name='subjectId' value= ".$subjectId.">
		</br>
         <button name='add_folder' type='submit' class='btn btn-primary'>ایجاد</button>
        </form>";
	}

	public static function add_folder($title , $description ,$sId){

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.folder (id , title ,description) values(?,?,?);";
		$ValueListArray = array();


		$id = Subject::GetLastID("folder");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $title);
		array_push($ValueListArray, $description);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		source::add_subjectFolder($id ,$sId);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectFolder($subjectId ,$folderId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_folder (subjectId , folderId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$folderId));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function attachment_form($subjectId){
		echo "<form dir='rtl' class='container col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;'>
		<div class='row'>
			<label>عنوان پیوند را وارد کنید</label>
			<input name='title' type='text'>
		</div>
		</br>
		<div class='row'>
			<label>توضیحات</label>
			<input name='description' type='text'>
		</div>
		</br>
		<div class='row'>
		<label>پیوند</label>
		<input name='attachment' type='text'>
		</div>
		<input type='hidden'  name='subjectId' value= ".$subjectId.">
		</br>
         <button name='add_attachment' type='submit' class='btn btn-primary'>ایجاد</button>
        </form>";
	}

	public static function add_attachment($name , $description ,$attachment ,$sId){

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.attachment (id , name ,description ,attachment) values(?,?,?,?);";
		$ValueListArray = array();


		$id = Subject::GetLastID("attachment");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $name);
		array_push($ValueListArray, $description);
		array_push($ValueListArray, $attachment);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		source::add_subjectAttachment($id ,$sId);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectAttachment($subjectId ,$attachmentId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_attachment (subjectId , attachmentId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$attachmentId));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}


	public static function hall_form($subjectId){
		echo "<form dir='rtl' class='container col-md-10 bg-color bg-info text-white center' style='margin:5%; padding:15px;'>
		<div class='row'>
			<label>عنوان تالار را وارد کنید</label>
			<input name='title' type='text'>
		</div>
		</br>
		<div class='row'>
			<label>توضیحات</label>
			<input name='description' type='text'>
		</div>
		</br>

		<div class='row'>
		<label>وضعیت  </label>
		<input type='radio'  name='isActive' value='1'>
		<label for='active'>فعال</label><br>

		<input type='radio'  name='isActive' value='0'>
		<label for='deactive'>غیرفعال</label><br>  
		
		</div>

		<input type='hidden'  name='subjectId' value= ".$subjectId.">
		</br>
         <button name='add_hall' type='submit' class='btn btn-primary'>ایجاد</button>
        </form>";
	}

	public static function add_hall($title , $description ,$status ,$sId){

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.communicationhall (id , title ,description ,status) values(?,?,?,?);";
		$ValueListArray = array();


		$id = Subject::GetLastID("communicationhall");
		if($id==-1){$id=1;}
		else{$id = $id+1;}

		array_push($ValueListArray, $id); 
		array_push($ValueListArray, $title);
		array_push($ValueListArray, $description);
		array_push($ValueListArray, (int)$status);
		$mysql->Prepare($query);
		$res = $mysql->ExecuteStatement($ValueListArray);
		source::add_subjectHall($id ,$sId);
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}

	public static function add_subjectHall($subjectId ,$hallId){

		$ValueListArray = array();

		$mysql = pdodb::getInstance();
		$query = "insert into sadaf.subject_hall (subjectId , hallId) values(?,?);";
		$mysql->Prepare($query);

		$res = $mysql->ExecuteStatement(array((int)$subjectId , (int)$hallId));

		
		if($rec = $res->fetch())
		{
			return true;
		}
		return -1;
	}
}

?>
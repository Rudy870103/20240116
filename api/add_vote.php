<?php include_once "db.php";

if(isset($_POST['voteTitle'])){
    $Vote->save(['text'=>$_POST['voteTitle'],'title_id'=>0,'vote'=>0]);
    $title_id=$Vote->find(['text'=>$_POST['voteTitle']])['id'];
}

if(isset($_POST['option'])){
    foreach($_POST['option'] as $option){
        $Vote->save(['text'=>$option,'title_id'=>$title_id,'vote'=>0]);
    }
}

if(!empty($_FILES['voteImg']['tmp_name'])){
    move_uploaded_file($_FILES['viteImg']['tmp_name'],"../img/{$_FILES['voteImg']['name']}");
    $_POST['voteImg']=$_FILES['voteImg']['name'];
    foreach($_POST['voteImg'] as $voteImg){
        $Vote->save(['voteImg'=>$voteImg,'title_id'=>$title_id]);
    }
}



to("../back.php?do=vote");
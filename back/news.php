<h1 class="text-center mt-5">日常撮影管理</h1>

<div class="mt-5" style="width:50%;margin:auto">
<div class="text-center pb-3" style="border-bottom: 1px solid #1f1f1f;">
    <button class="mb-5 login-btn" onclick="location.href='?do=add_news'">新增照片</button>
</div>
<?php
$news=$News->all(" order by rank desc");
foreach($news as $idx => $new){
?>

<div class="item d-flex justify-content-between py-5" style="border-bottom: 1px solid #1f1f1f;">
    <div style="width: 50%;">
        <img src="./img/<?=$new['img'];?>" style="width:100%">
    </div>
    <div style="width: 40%;">
        <div style="display:flex;width:100%">
            <div class="mb-3">
                標題:<?=$new['title'];?>
            </div>
        </div>
        <div>
            文章內容:<?=$new['news'];?>
        </div>
        <div class="mt-5">
            <button class='show-btn login-btn' data-id="<?=$new['id'];?>"><?=($new['sh']==1)?'隱蔵':'顯示';?></button>
            <button class="edit-btn login-btn" data-id="<?=$new['id'];?>">編輯文章</button>
            <button class="del-btn login-btn" data-id="<?=$new['id'];?>">刪除文章</button>
            <div class="mt-1">
                <button class='sw-btn login-btn'  
                    data-id="<?=$new['id'];?>" 
                    data-sw="<?=($idx!==0)?$news[$idx-1]['id']:$new['id'];?>">前移
                </button>
                <button class='sw-btn login-btn' 
                    data-id="<?=$new['id'];?>" 
                    data-sw="<?=((count($news)-1)!=$idx)?$news[$idx+1]['id']:$new['id'];?>">後移
                </button>
            </div>
        </div>
    </div>
</div>
<?php
}
?>
</div>
<script>
$(".show-btn").on("click",function(){
    let id=$(this).data('id');
    $.post("./api/show_news.php",{id},()=>{
        location.reload()
    })
})
$(".edit-btn").on("click",function(){
    let id=$(this).data('id');
    location.href=`?do=edit_news&id=${id}`;
})
$(".del-btn").on("click",function(){
    let id=$(this).data('id');
    $.post("./api/del_news.php",{id,table:'news'},()=>{
        location.reload();
    })
})
$(".sw-btn").on("click",function(){
    let id=$(this).data('id');
    let sw=$(this).data('sw');
    let table='news'
    $.post("./api/sw.php",{id,sw,table},()=>{
        location.reload()
    })
})

</script>
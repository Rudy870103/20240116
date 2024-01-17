<header style="padding: 80px 0;">
<h1 style="text-align: center;font-weight:700">最新文章<span style="display: block;font-size:16px;margin-top:10px">News</span></h1>
</header>

<main style="width: 80%;margin:auto">
    <div class="news-list d-flex flex-wrap" style="column-gap:5%">
    <?php
        $total=$News->count(" where `sh`=1");
        $div=9;
        $pages=ceil($total/$div);
        $now=$_GET['p']??1;
        $start=($now-1)*$div;
        $news=$News->all(" where `sh`=1 order by id desc limit $start,$div ");
        foreach($news as $new){
    ?>
        <article style="width: 30%;margin-bottom:20px">
            <div><img src="./img/<?=$new['img'];?>" alt="" width="100%"></div>
            <div><h3 class="mt-3" style="font-weight: 700;" ><?=$new['title'];?></h3></div>
            <div><p class="mt-3"><?=$new['news'];?></p></div>
        </article>
        <?php
        }
    ?>
    </div>
</main>
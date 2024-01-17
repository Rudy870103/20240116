<header style="padding: 80px 0;">
    <h1 style="text-align: center;font-weight:700">主題票選<span style="display: block;font-size:16px;margin-top:10px">Voting</span></h1>
</header>
<?php
$vote=$Vote->find($_GET['id']);
?>
<h3><?=$vote['text'];?></h3>

<form action="./api/voting.php" method="post">
<?php 

$vote=$Vote->all(['title_id'=>$_GET['id']]);
foreach($vote as $vot){
    if(!empty($vot['text'])){
        echo "<div>";
        echo "<input type='radio' name='opt' value='{$vot['id']}'>";
        echo $vot['text'];
        if(empty($vot['text'])){
            echo "<img src='./img/{$vot['voteImg']}'>";
        }
        echo "</div>";
    }
}
?>
<div>
    <input type="submit" value="我要投票">
</div>
</form>


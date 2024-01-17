<header style="padding: 80px 0;">
    <h1 style="text-align: center;font-weight:700">主題票選<span style="display: block;font-size:16px;margin-top:10px">Voting</span></h1>
</header>
<?php
$vote = $Vote->find($_GET['id']);
?>
<h3><?= $vote['text']; ?></h3>

<form action="./api/voting.php" method="post">
    <div class='d-flex'>
        <?php
        $vote = $Vote->all(['title_id' => $_GET['id']]);
        foreach ($vote as $vot) {
            if (!empty($vot['text'])) {
                echo "<div>";
                echo "<input type='radio' name='opt' value='{$vot['id']}'>";
                echo $vot['text'];
                echo "</div>";
            }
        }

        $imgs = $Vote->all(['text' => '','title_id' => $_GET['id']]);
        foreach ($imgs as $img) {
            echo "<img src='./img/{$img['voteImg']}' style='width:300px;height:100%'>";
        }
        ?>
    </div>
    <div>
        <input type="submit" value="我要投票">
    </div>
</form>
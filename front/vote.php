<header style="padding: 80px 0;">
    <h1 style="text-align: center;font-weight:700">主題票選<span style="display: block;font-size:16px;margin-top:10px">Voting</span></h1>
</header>



<table>
    <tr>
        <th width="10%">編號</th>
        <th width="60%">問卷題目</th>
        <th width="10%">投票總數</th>
        <th width="10%">結果</th>
        <th width="10%">狀態</th>
    </tr>
    <?php
    $vote=$Vote->all(['title_id'=>0]);
    foreach($vote as  $key => $vot){
    ?>
    <tr>
        <td><?=$key+1;?></td>
        <td><?=$vot['text'];?></td>
        <td><?=$vot['vote'];?></td>
        <td>
            <a href='?do=result&id=<?=$vot['id'];?>'>結果</a>
        </td>
        <td>
        <?php
        if(isset($_SESSION['user'])){
            echo "<a href='?do=voting&id={$vot['id']}'>參與投票</a>";
        }else{
            echo "請先登入";
        }

        ?>
        </td>
    </tr>
    <?php
        }
    ?>    
</table>


<h1 class="text-center mt-5">主題票選管理</h1>

<div class="mt-5 mx-auto" style="border: 1px solid #1f1f1f;width:50%;">
    <h2 class="text-center mt-5">新增問題</h2>
    <form action="./api/add_que.php" method="post" style="width:50%;margin: auto;padding: 50px 0;">
        <table style="margin: auto;padding: 80px 0;">
            <tr style="border-bottom: 1px solid #1f1f1f;height:50px">
                <td>問卷標題 : &nbsp</td>
                <td><input type="text" name="subject" style="width: 100%;"></td>
            </tr>
            <tr id="opt" style="height:50px">
                <td>新增選項 : &nbsp</td>
                <td><input type="text" name="option[]" style="width: 100%;"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="file" name="voteImg[]"></td>
            </tr>
            <tr style="height:50px">
                <td></td>
                <td><input class="moreBtn" type="button" value="+" onclick="more()"></td>
            </tr>
        </table>
        <style>
            .moreBtn{
                width: 100%;
                border: 1px solid #1f1f1f;
                border-radius:5px
            }
            .moreBtn:hover{
                background-color: #1f1f1f;
                color:#f8f8f8
            }
        </style>
        <div class="mt-5 text-center">
            <input class="login-btn" type="submit" value="送出"> | <input class="login-btn" type="reset" value="清空">
        </div>
    </form>
</div>


<script>
    function more() {
        let opt = `<tr style="height:50px">
                <td>新增選項 : &nbsp</td>
                <td><input type="text" name="option[]" style="width: 100%;"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="file" name="voteImg[]"></td>
            </tr>`
        $("#opt").before(opt);
    }
</script>
<header style="padding: 80px 0;">
<h1 style="text-align: center;font-weight:700">留言區<span style="display: block;font-size:16px;margin-top:10px">Message</span></h1>
</header>

<main style="width: 80%;margin:auto">
    <form action="./api/save_message.php" method="post" style="text-align:start;margin: auto;padding: 80px 0;">
        <div >
            <span>暱稱 </span>
            <input type="text" name="nickname" id="" style="background-color:#f8f8f8 !important;border:1px solid #1f1f1f">
        </div>
        <div>
            <span>留言</span>
            <textarea name="text" id="" style="background-color:#f8f8f8 !important;border:1px solid #1f1f1f"></textarea>
        </div>
        <div>
            <button type="submit" class="login-btn" onclick="message()">送出</button>
            <button type="reset" class="login-btn">清除</button>
        </div>
    </form>
</main>

<script>
    function message(){
        alert('留言已送出!')
    }
</script>
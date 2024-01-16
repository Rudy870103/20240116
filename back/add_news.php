<h1 class="text-center mt-5 mb-5">新增文章</h1>

<form action="./api/save_news.php" method="post" enctype="multipart/form-data">


    <table style="margin: auto;">
        <tr>
            <td class="text-end">文章圖片 &nbsp&nbsp</td>
            <td>
                <input type="file" name="img" id="">
            </td>
        </tr>
        <tr>
            <td class="text-end">標題 &nbsp&nbsp</td>
            <td><input type="text" name="title" id=""></td>
        </tr>
        <tr>
            <td class="text-end">文章內容 &nbsp&nbsp</td>
            <td><textarea name="news" style="width:99%;height:100px;"></textarea></td>
        </tr>
    </table>

    <div class="text-center">
        <input type="submit" value="新增">
        <input type="reset" value="重置">
    </div>
</form>
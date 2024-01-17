<style>
    .logo {
        background-image: url(./icon/logo.png);
        background-repeat: no-repeat;
        background-position: center;
        background-size: contain;
        position: relative;
        overflow: hidden;
    }

    .cover {
        animation: cover 40s linear infinite;
        position: absolute;
        left: 10px;
    }

    @keyframes cover {
        from {
            transform: translate(-60%);
        }

        to {
            transform: translate(150%);
        }
    }
</style>
<header style="padding: 80px 0;">
    <h1 style="text-align: center;">品牌起源</h1>
</header>

<main>
    <div class="logo mb-5" style="width: 80%;height:500px;margin:auto;">
        <div class="cover"><img src="./icon/cover.png" alt="" height="500px"></div>
    </div>
    <article>
        <h3 class="text-center">我們所經歷的每件事，看似豪不相關，但當換個角度看，其實我們正勇往直前</h3>
    </article>
</main>
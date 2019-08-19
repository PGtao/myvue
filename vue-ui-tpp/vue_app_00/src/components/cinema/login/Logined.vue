<template>
    <div class="container">
        <div class="background-header"></div>
        <div class="login-header">
            <img @click="moimg()" src="../../../assets/morentouxiang.png" class="img-header">
            <span class="header-font">欢迎你：{{mouname}} !</span>
            <div class="img-right">
                <img src="../../../assets/ling.png" class="img-right1">
                <img src="../../../assets/luomu.png" class="img-right2">    
            </div>
        </div>
        <div class="card1">
            <div class="card1-img">
                <img src="../../../assets/dianying.png" class="card1-m1">
                <img src="../../../assets/yinle.png" class="card1-m2">
                <img src="../../../assets/yinliao.png" class="card1-m3">
            </div>
            <div>
                <span class="card1-text1">电影票</span>
                <span class="card1-text1">演出票</span>
                <span class="card1-text1">小食券</span>
            </div>
        </div>
        <div class="card2">
            <table></table>
            <p class="card2-text1">我的优惠</p>
            <div class="card2-img">
                <img src="../../../assets/youhuiquan.png" class="card2-img1">
                <img src="../../../assets/icon-vipcard.png" class="card2-img2">
                <img src="../../../assets/guanyingqia.png" class="card2-img3">
            </div>
            <div class="card2-text2">
                <span class="card2-text2-1">优惠券</span>
                <span class="card2-text2-2">权益卡</span>
                <span class="card2-text2-3">乐影卡</span>
            </div>
            <div class="card2-VIP">
                <p class="card2-VIP-1">88VIP 吃/玩/听/看/买 一卡通</p>
                <p>尊享购物权益 多重会员身份</p>
                <div class="card2-VIP-3">88VIP</div>
            </div>
        </div>
        <div class="card3">
            <table></table>
            <p class="card3-text1">我的记录</p>
            <div class="card3-xk">
                <div>
                    <img src="../../../assets/xiangkan.png" alt="">
                </div>
                <div>
                    <p>想看</p>
                    <p class="card3-xk-2">登录后查看</p>
                </div>
            </div>
            <div class="card3-kg">
                <div>
                    <img src="../../../assets/kanguo.png" alt="">
                </div>
                <div>
                    <p>看过</p>
                    <p class="card3-kg-2">登录后查看</p>                    
                </div>
            </div>
        </div>
        <div class="card4">
            <table></table>
            <p class="card4-text1">我的服务</p>
            <div>
                <div class="card4-img1">
                    <img src="../../../assets/card4/check-circle.png" alt="">
                    <img src="../../../assets/card4/CI.png" alt="">
                    <img src="../../../assets/card4/close-circle.png" alt="">
                    <img src="../../../assets/card4/compass.png" alt="">
                </div>
                <div class="card4-text2">
                    <span>我的小聚场</span>
                    <span>发起的讨论</span>
                    <span>播放记录</span>
                    <span>银行特惠</span>
                </div>
                <div class="card4-img1">
                    <img src="../../../assets/card4/Dollar.png" alt="">
                    <img src="../../../assets/card4/down-circle.png" alt="">
                    <img src="../../../assets/card4/frown.png" alt="">
                    <img src="../../../assets/card4/info-circle.png" alt="">
                </div>
                <div class="card4-text2">
                    <span>阿里鱼众筹</span>
                    <span>娱乐宝</span>
                    <span>3小时公益</span>
                    <span>我的客服</span>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
          mouname:"",  
        }
    },
    methods: {
      moimg(){
        this.$router.push("/Home")
      }   
    },
    created(){
        var url = "logined";
         var i=this.uname;
         var j=this.upwd;
          var obj={uname:i,upwd:j};
        this.axios.get(url,{params:obj}).then(result=>{
            //数据库插入的数据
           console.log(result);
           this.mouname=result.data.data[0].uname;
          
      })  
    }
}

</script>
<style scoped>
    .card4-text2 span{
        margin-left: 15px;
        margin-right:15px; 
    }
    .card4-text2{
        font-size: 10px;
        margin-top:3px !important;
        margin-bottom:10px !important;
        text-align: center;
    }
    .card4-img1{
        text-align: center;
    }
    .card4-img1 img{
        width:35px;
        margin-left: 22px;
        margin-right:22px;   
    }
    .card4{
        margin:0 auto;
        margin-top:20px;
        width:340px;
        height:250px;
        background-color:#fff;
        border-radius: 10px;
    }
    .card4-text1{
        margin-top:15px;
        margin-left:15px;
        font-family:SimHei;
    }
    .card3-kg-2{
        font-size:10px;
    }
    .card3-kg p{
        margin:5px;
        font-family:SimHei;
    }
    .card3-kg{
        float: right;
        display: flex;
        margin-right:20px;
    }
    .card3-xk-2{
        font-size:10px;
    }
    .card3-xk p{
        margin:5px;
        font-family:SimHei;
    }
    .card3-xk{
        display: flex;
        margin-left:20px;
        float: left;
    }
    .card3-text1{
        margin-top:15px;
        margin-left:15px;
        font-family:SimHei;
    }
    .card3{
        margin:0 auto;
        margin-top:20px;
        width:340px;
        height:140px;
        background-color:#fff;
        border-radius: 10px;
    }
    .card2-VIP-3{
        color:#C49C7B;
        font-size:25px;
        position: absolute;
        margin-top:-40px !important;
        margin-left:230px !important; 
    }
    .card2-VIP p{
        color:#C49C7B;
        margin-block-start:3px !important;
        margin-block-end:3px !important;
    }
    .card2-VIP{
        position: relative;
        margin:0 auto;
        margin-top:20px;
        width:320px;
        height:60px;
        background-color:#FFE9D1;
        border-radius: 10px;
        padding-top:10px;
    }
    .card2-text2-3{
        margin-left:70px;
    }
    .card2-text2-1{
        margin-right:70px;
    }
    .card2-text2{
        text-align: center;
    }
    .card2-text2 span{
        font-size:13px;
    }
    .card2-img3{
        margin-left:80px;
    }
    .card2-img1{
        margin-right:80px;
    }
    .card2-img{
        text-align: center;
    }
    .card2-img img{
        width:27px;
    }
    .card2-text1{
        /*position:absolute;*/
        margin-top:15px;
        margin-left:15px;
        font-family:SimHei; 
    }
    .card2{
        margin:0 auto;
        margin-top:20px;
        width:340px;
        height:200px;
        background-color:#fff;
        border-radius: 10px;
    }
    .card1-text1{
        font-size:10px;
        margin-left:48px;
        margin-right:20px;
    }
    .card1-m3{
        width:30px;
        margin-top:15px;
        margin-left:30px;
        margin-right:40px;
    }
    .card1-m2{
        width:45px;
        margin-top:15px;
        margin-left:25px;
        margin-right:40px;
    }
    .card1-m1{
        width:30px;
        margin-top:15px;
        margin-left:50px;
        margin-right:40px;
    }
    .container{
        background-color:#f5f5f5 ! important;
        height:1000px;
    }
    .background-header{
        width:100%;
        height:180px;
        background-color:#FF387E;
    }
    .login-header{
        margin-top:-120px;
        margin-left:20px;
    }
    .img-header{
        width:50px;
    }
    .header-font{
        color:#fff;
        margin-left:10px;
        margin-top:15px;
        position: absolute;
    }
    .img-right1{
        width:20px;
        margin-left:250px;
        margin-top:-55px;
        position: absolute;
    }
    .img-right2{
        width:20px;
        margin-left:290px;
        margin-top:-55px;
        position: absolute;
    }
    .card1{
        margin:0 auto;
        margin-top:20px;
        width:340px;
        height:90px;
        background-color:#fff;
        border-radius: 10px;
    }
</style>

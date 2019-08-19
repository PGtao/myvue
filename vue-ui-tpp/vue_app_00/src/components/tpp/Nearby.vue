<template>
  <div class="nearby">
    <h4>近期常去影院</h4>
    <div class="cinema">
      <div>
        <p class="cname">{{cinema}}</p>
        <p class="address">{{address}}</p>
        <p class="price">￥{{price}}<span>起</span></p>
      </div>
      <div style="height:100px">
        <!-- 按钮 -->
        <div class="submit">购票</div>
      </div>
      
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      cinema:"星际影城(怀德文华艺术中心)",
      address:"下城区石桥路468号永佳灯具市场",
      price:19.9
    }
  }
}
</script>
<style scoped>
  .nearby{
    margin-top:-40px;
    background: #fff;
    z-index: 100;
  }
  .cinema{
    width:330px;
    height:100px;
    margin:0 auto;
    border-radius: 10px;
    /* border:1px solid #aaa; */
    border:1px solid #bbb;
    padding:0 10px;
    display: flex;
    justify-content: space-between;
  }
  .cname{
    font-weight: 600;
    margin-bottom:0;
  }
  .address{
    font-size: 10px;
    margin:5px 0 0 0;
    color:#555;
  }
  .price{
    margin:0;
    font-size:14px;
    font-weight: 600;
    color:#fd242c;
  }
  .price>span{
    font-size:10px;
    font-weight: 100;
  }
  .submit{
    width:50px;
    padding:5px 5px;
    color:#fff;
    text-align: center;
    border-radius:20px;
    font-size:14px;
    background-image: linear-gradient(45deg,#ff47a8,#ff2e62);
    margin-top:5px;
    transform:translate(0,80%)
  }
</style>

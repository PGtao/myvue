<template>
  <div class="headnav" style="position:relative;">
    <div>
      <div class="nav" >
        <img src="../../assets/tpp-chaozhi.png" alt="">
        <mt-badge type="error" size="small">火爆</mt-badge>
      </div>
      <span>超值抢购</span> 
    </div>
    <div>
      <div class="nav">
         <img src="../../assets/tpp-shizi.png" alt="">
      </div>
      <span style="margin-left:8px">狮子王</span> 
    </div>
    <div>
      <div class="nav">
         <img src="../../assets/tpp-huiyuan.png" alt="">
      </div>
      <span>会员中心</span> 
    </div>
    <div>
      <div class="nav">
         <img src="../../assets/tpp-fenxiang.png" alt="">
      </div>
      <span>分享有礼</span> 
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  }
}
</script>
<style scoped>
  .headnav{
    margin:20px 0;
    display: flex;
    justify-content: space-around;
  }
  .headnav .nav{
    width:50px;
    height:50px;
    border-radius:50%
  }
  .nav img{
    width: 100%;
    height: 100%;
    overflow: hidden;
  }
  .headnav span{
    font-size:12px;
    text-align: center;
  }
  .mint-badge{
    position: absolute;
    left:50px;
    padding:1px 4px;
  }
</style>


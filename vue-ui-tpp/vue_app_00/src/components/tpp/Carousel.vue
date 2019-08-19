<template>
<!-- 轮播图 -->
<div>
   <mt-swipe :auto="4000">
      <mt-swipe-item>
         <img src="../../assets/youkuph.jpg" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../assets/skb.jpg" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../assets/srtg.jpg" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../assets/wljqc.jpg" alt="">
      </mt-swipe-item>
      <mt-swipe-item>
         <img src="../../assets/qzgs.jpg" alt="">
      </mt-swipe-item>
   </mt-swipe>
</div>
</template>
<script>
export default {
   
}
</script>
<style scoped>
   body{text-align: center;}
   .mint-swipe{
      /* border:1px solid #000; */
      height:125px;
      border-radius:15px;
      overflow: hidden;
   }
   .mint-swipe-item>img{
       width:365px;
       height: 125px;
   }
   .mint-swipe-indicator{
      width:5px;
      height:5px;
   }
</style>


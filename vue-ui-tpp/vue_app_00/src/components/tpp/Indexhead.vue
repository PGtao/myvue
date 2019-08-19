<template>
   <div class="head">
      <!-- indexhead头部 内含城市选择和简单查询 -->
      <div @click="pushcitychose" style="width:10%;margin-top:8px;margin-right:15px;">{{city}}</div> 
      <div class="head-find">搜影片、影院、演出</div>
   </div>
</template>
<script>
export default {
   data() {
      return {
         city:"杭州"
      }
   },
   methods: {
      pushcitychose(){
         this.$router.push("/Citychose")
      }
   },
}
</script>
<style scoped>
   *{margin:0;padding:0;}
   .head{
      width:100%;
      height:50px;
      /* position: fixed; */
      display: flex;
      justify-content: space-around;
      align-items: center;
      z-index: 999;
      background: #fff;
   }
   .head-find{
      background: #ccc !important;
      margin-top: 10px;
      width:200px;
      padding:7px;
      height:20px;
      border-radius:20px;
      text-indent: 8px;
      color:#aaa;
   }
</style>

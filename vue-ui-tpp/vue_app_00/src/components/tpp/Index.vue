<template>
   <div> 
      <table></table>
      <!-- 首页   -->
      <!-- 头部 -->
      <indexhead style="position:fixed;margin-top:-10px"></indexhead>
      <div style="margin-top:70px;overflow:auto">
          <!-- 轮播组件 -->
      <carousel></carousel>
      <!-- 导航4个球组件 -->
      <headnav></headnav>
      <!-- 热映影片,图片拖动组件 -->
      <hotfilm  v-for="(item1,j) in titlelist1" 
         :bigtitle="item1.bigtitle"
         :mtitle="item1.mtitle"
      ></hotfilm>
      <!-- 附近影院 写死 -->
      <nearby></nearby>
      <!-- 即将上映 内置选项卡 -->
       <hotfilm v-for="(item,i) in titlelist" :key="i"
         :bigtitle="item.bigtitle"
         :mtitle="item.mtitle"
      ></hotfilm>
      <!-- 近期演出 -->
      <!-- 推荐影片 -->
      </div>
     

   </div>
</template>
<script>
import Indexhead from "./Indexhead"
import Hotfilm from "./Hotfilm"
import Carousel from "./Carousel"
import Headnav from "./Headnav"
import Nearby from "./Nearby"

export default {
   data(){
      return{
         titlelist1:[
            {bigtitle:"热映影片",mtitle:"评分TOP10"}
            ],
         titlelist:[
            {bigtitle:"即将上映",mtitle:"热播预告top10"},
            {bigtitle:"近期演出",mtitle:"演出日历"},
            {bigtitle:"推荐影片",mtitle:""},
         ]
      }
   },
   methods: {
      
   },
   components:{
      "hotfilm":Hotfilm,
      "indexhead":Indexhead,
      "carousel":Carousel,
      "headnav":Headnav,
      "nearby":Nearby,
   }
}
</script>
<style scoped>

</style>


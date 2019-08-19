<template>

<div>
<mt-navbar v-model="selected">
  <mt-tab-item id="1" class="xuan">{{xuana}}</mt-tab-item>
  <mt-tab-item id="2" class="xuan">{{xuanb}}</mt-tab-item>
</mt-navbar>

<!-- tab-container -->
<mt-tab-container v-model="selected">
  <mt-tab-container-item id="1">
     <moviemesslist></moviemesslist>
  </mt-tab-container-item>
  <mt-tab-container-item id="2">
   <moviemesslistl></moviemesslistl>
  </mt-tab-container-item>
</mt-tab-container>
</div>
  
</template>
<script>
//引入列表项子组件
import Moviemesslist from "./Moviemesslist.vue"
import Moviemesslistl from "./Moviemesslistl.vue"
export default {
 data() {
     return {
       selected:"1",
       xuana:"正在上映",
       xuanb:"即将上映",
     }

 },
 methods:{
     
 },
  components:{
        "moviemesslist":Moviemesslist,
        "moviemesslistl":Moviemesslistl,
    },
}


</script>
<style>
.mint-navbar .mint-tab-item.is-selected {
    border-bottom: 3px solid #ff2e62  !important;
    color: #ff2e62 !important;
    font-weight: 700 !important;
    margin-bottom: 5px !important;
    box-sizing: border-box !important;
}
.mint-tab-item-label {
    color: inherit;
    font-size: 16px !important;
}
</style>

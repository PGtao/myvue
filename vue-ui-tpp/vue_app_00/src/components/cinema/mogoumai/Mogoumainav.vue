<template>

<div>
<mt-navbar v-model="selected" fixed>
  <mt-tab-item id="1" class="xuan">{{xuana}}</mt-tab-item>
  <mt-tab-item id="2" class="xuan">{{xuanb}}</mt-tab-item>
  <mt-tab-item id="3" class="xuan">{{xuanc}}</mt-tab-item>
</mt-navbar>

<!-- tab-container -->
<mt-tab-container v-model="selected">
  <mt-tab-container-item id="1">
     <mogoumailiea></mogoumailiea>
  </mt-tab-container-item>
  <mt-tab-container-item id="2">
   <mogoumailiea></mogoumailiea>
  </mt-tab-container-item>
   <mt-tab-container-item id="3">
    <mogoumailiea></mogoumailiea>
  </mt-tab-container-item>
</mt-tab-container>
</div>
  
</template>
<script>
//引入列表项子组件
import Mogoumailiea from "./Mogoumailiea.vue"
export default {
 data() {
     return {
       selected:"1",
       xuana:"今天07-16",
       xuanb:"明天07-17",
        xuanc:"后天07-18",
     }

 },
 methods:{
     
 },
  components:{
        "mogoumailiea":Mogoumailiea,
    },
}


</script>
<style>
.mint-navbar .mint-tab-item{
    color: #666666 !important;
}
.mint-navbar .mint-tab-item.is-selected {
    border-bottom: 3px solid #ff2e62  !important;
    color: #ff2e62 !important;
    font-weight: 300 !important;
    margin-bottom: 5px !important;
    box-sizing: border-box !important;
}
.mint-tab-item-label {
    color: inherit;
    font-size: 14px !important;
}
</style>

<template>
    <div>
        <movideotop
         :moimgloge="require('../../../public/listimg/taopp.png')"
         :moapp="moapp"
         :xiazai="xiazai"
         :videourl="require('../../../public/listvideo/saodu.mp4')"
         :playurl="require('../../../public/listimg/play.png')"
         :myVideo="videoMy"
         :goupiaoClick="goupiaoClick"
         :isplay="false"
          :motitle="motitle"
          :mobofan="mobofan"
          :motuurl="require('../../../public/listimg/saodu.webp')"
          :motopwen="motopwen"
          :moxbutwen="moxbutwen"
          :moanniu="moanniu"
        >
        </movideotop>
        <movideofoot
        >

        </movideofoot>
    </div>
</template>
<script>
import Movideotop from "./Movideotop.vue"
import Movideofoot from "./Movideofoot.vue"
export default {
    data () {
        return {
            moapp:"在App内打开",
            xiazai:"下载",  
            motitle:"《扫毒2》葬礼对决片段 刘德华古天乐正面对决 燃爆口碑",
            mobofan:"587次播放",
            motopwen:"扫毒2天地对决 淘票票评分",
            moxbutwen:"2019-07-05 中国香港",
            moanniu:"购票",
        }

    },
   
methods: {
      goupiaoClick(){
      this.$router.push("/Mogoumainav")
    },
   videoMy(){
        console.log(111);
       var video=document.getElementById("video");
       var ctrl=document.querySelector(".ctrl");
        var img=document.querySelector(".img");
       console.log("ctrl");
        console.log(video);
           if(video.paused){
             video.play();
               ctrl.style.display="none";
             }else{
                video.pause();
                  ctrl.style.display="block";
               }
           }

 },
  
    components: {
    "movideotop":Movideotop,
    "movideofoot":Movideofoot
    }
}
</script>
<style>

</style>



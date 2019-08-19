<template>
    <div>
      <!-- <h2>电影列表</h2> -->
      <moviemess v-for="(item,i) of list" :key="i"
       :imgurl="item.imgurl"  
       :playurl="item.playurl"  
       :title="item.title"
       :view="item.view"
       :movielie="item.movielie"
       :pingfen="item.pingfen"
       :daoyan="item.daoyan"
       :zhuyan="item.zhuyan"
       :anniu="item.anniu"
       :id="item.id"
       :itemClick="clickItem"
       :imgClick="clickImg"
       :anniuClick="anniuClick"
       class="itemstyle"
      >   
      </moviemess>
    </div>
</template>
<script>
import Moviemess from "./Moviemess.vue"
// import moviemesslistjson from "../json/moviemesslist.json"
export default {
    data () {
        return {
            // list:moviemesslistjson,
            list:[],
         pno:0, //页码
         ps:4, //页大小
        }
    },
     created () {
       var url = "movie";
        // var obj = {play:isplay};
        this.axios.get(url).then(result=>{
            //数据库插入的数据
           console.log(result);
           var str=result.data.data;
           //生成的影院数组
         // this.list=str;
         //  //筛选正在热映的电影
           for(var i=0;i<str.length;i++){
               if(str[i].isplay==1){
                var obj=this.list.concat(str[i]);
                console.log(obj);
                this.list=obj;
               }
           }
      })
     },
 
    
    methods:{
        clickItem(id){
            console.log(id);
         },
         clickImg(){
          this.$router.push("/Movideonav")
         },
        anniuClick(){
          this.$router.push("/Mogoumainav")
         }
    },
    
    components:{
        "moviemess":Moviemess
    }
}
</script>
<style scoped>
.itemstyle{
    padding: 10px;
    border-bottom:1px solid #d9d9d9;
}
</style>



<template>
    <div>
      <!-- <h2>电影列表</h2> -->
      <moviemessl v-for="(item,i) of list" :key="i"
       :imgurl="item.imgurl"  
       :playurl="item.playurl"  
       :title="item.title"
       :pingfen="item.pingfen"
       :daoyan="item.daoyan"
       :zhuyan="item.zhuyan"
       :view="item.view"
       :movielie="item.movielie"
       :anniu="item.anniu"
       :id="item.id"
       :itemClick="clickItem"
       :imgClick="clickImg"
      :anniuClick="anniuClick"
       class="itemstyle"
      >   
      </moviemessl>
    </div>
</template>
<script>
import Moviemessl from "./Moviemessl.vue"
// import moviemesslistjsonl from "../json/moviemesslistl.json"
export default {
    data () {
        return {
            // list:moviemesslistjsonl,
            list:[],
        }
    },
    methods: {
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
    created () {
       var url = "movie";
        // var obj = {play:isplay};
        this.axios.get(url).then(result=>{
            //数据库插入的数据
           console.log(result);
           var str=result.data.data;
           //生成的影院数组
         // this.list=str;
         //筛选正在预售的电影
           for(var i=0;i<str.length;i++){
               if(str[i].isplay==0){
                var obj=this.list.concat(str[i]);
                console.log(obj);
                this.list=obj;
               }
           }
      })
     },
    components: {
        "moviemessl":Moviemessl
    }
}
</script>
<style scoped>
.itemstyle{
    padding: 10px;
    border-bottom:1px solid #d9d9d9;
}
</style>



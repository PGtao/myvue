<template>
    <div class="container">
        <h2 class="mozhong">全部视频<span class="mofnum"> ( {{mofnum}} 个) </span></h2>
        <div class="mofitem" v-for="(item,i) of list" :key="i">
        <img class="moimgurl" :src="'http://127.0.0.1:3000/img/'+item.imgurl"/>
         <div class="mofinfo">
          <span class="mofs">{{item.title}}</span>
          <span class="mofx">{{item.bofang}}</span>
        </div> 
       </div>
        <mt-button class="mofnum1" size="large" @click="loadMore">查看全部{{mofnum}}个视频</mt-button>
    </div>
</template>
<script>
//  import movideofootjson from "../json/movideofoot.json"   
export default {

    data () {
    return {
    //    list:movideofootjson,
        list:[],
        mofnum:15,  
        pno:0, //页码
        ps:5, //页大小   
        }
    },
    methods:{
      loadMore(){
        //加载更多的数据
        var url = "movielist";
        this.pno++;
        var obj={pno:this.pno,pageSize:this.ps};
        this.axios.get(url,{params:obj}).then(result=>{
          console.log(result);
          // this.list = result.data.data;
          var rows=this.list.concat(result.data.data);
          this.list=rows;
        })
      }
    },
    created() {
       this.loadMore();
    },
}
</script>
<style scoped>
.container{
   z-index: 1; 
}
.mozhong{
font-size: 18px;
color: #333;
font-weight: 700;
margin: 0 5px;
font-family: Helvetica Neue,Helvetica,Arial,Hiragino Sans GB,Microsoft Yahei,STXihei,SimHei,WenQuanYi Micro Hei,Droid Sans,sans-serif;
}
.mofnum{
    font-size: 14px;
    color: 8A869E;
    font-weight: 300;
    font-family: Helvetica Neue,Helvetica,Arial,Hiragino Sans GB,Microsoft Yahei,STXihei,SimHei,WenQuanYi Micro Hei,Droid Sans,sans-serif;
}
.mofitem{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 0;
}
.moimgurl{
    width: 110px ;
    height: 75px;;
}
.mofinfo{
    display: flex;
    flex-direction: column;
    align-items: flex-start;   
    margin-left: 10px;
}
.mofs{
font-size: 16px;
color: #50505a;
}
.mofs:hover{
  color: #ff4d64;  
}
.mofx{
font-size: 12px;
color: #50505a;
}
.mofx:hover{
  color: #ff4d64;  
}
.mofnum1{
 font-size: 15px;
 font-weight: 500; 
 color: #1394f3;  
 border: 1px solid #dddddd;
}
</style>



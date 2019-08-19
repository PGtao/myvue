<template>
  <div>
    <div class="head">
      <span style="font-size:18px;">{{bigtitle}}></span>
      <div class="grade">{{mtitle}}</div>
    </div>

    <div class="films">
      <film v-for="(item,i) in list" :key="i"
        :title="item.title"
        :label="item.label"
        :imgurl="item.imgurl"
        :bought="bought"
      ></film>
    </div>
  </div>
</template>
<script>
// 引入子组件
import Film from "./Film"
export default {
  props:{//声明来接收父组件的数据
    bigtitle:{default:""},
    mtitle:{default:""},
  },
  data(){
    return{
      list:[
        {title:"友情以上",label:"票房No.1",imgurl:"tpp01.webp"},
        {title:"命运之夜-天之夜",label:"荷兰弟独自成长之路",imgurl:"tpp02.webp"},
        {title:"未来机械城",label:"迪士尼年度力作",imgurl:"tpp03.webp"},
        {title:"狮子王",label:"特工天团欢乐冒险",imgurl:"tpp04.webp"},
       {title:"嗝嗝老师",label:"票房No.1",imgurl:"tpp05.webp"},
        {title:"妈妈咪啊",label:"荷兰弟独自成长之路",imgurl:"tpp06.webp"},
        {title:"精灵小王子",label:"迪士尼年度力作",imgurl:"tpp07.webp"},
        {title:"何以为家",label:"特工天团欢乐冒险",imgurl:"tpp08.webp"},
      ],
      
    }
  },
  methods: {
     bought(){
           this.$router.push("/Mogoumainav")
      },
  },
  // 注册子组件
  components:{
    "film":Film
  }
}
</script>
<style >
  .head{
    padding:10px;
    display:flex;
    justify-content: space-between
  }
  .grade{
    font-size: 13px;
    border:1px solid #999;
    border-radius:10px;
    padding:2px 7px;
  }
  .films{
    display:flex;
    overflow-x: scroll; 
  }
  .films>div{
    height:calc(100% + 30px);
  }
  
</style>


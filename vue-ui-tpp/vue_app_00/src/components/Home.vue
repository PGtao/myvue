<template>
    <div class="tpp_container">
        <div class="page-wrap">
       <!-- 1.顶部标题栏
        <titlebar :leftmsg="leftmsg" 
        :rightFirst="require('../assets/ic_search.png')" 
        :rightSecond="require('../assets/ic_add.png')" 
        :search="mysearch"
        :add3="myadd3"
        ></titlebar>
        <!-- 2.防止顶部内溢出 -->
        <!-- 保留（标题）48px -->
        <!-- <div style="margin-top:48px"></div> --> 
        <!-- 3.面板，1父面板，4子面板 -->
         <mt-tab-container v-model="active" >
          <mt-tab-container-item id="shouye">
           <index></index>
           
          </mt-tab-container-item>
          <mt-tab-container-item  id="reying">
           <movietop></movietop>
          </mt-tab-container-item>
           <mt-tab-container-item id="yinyuan">
            <mogoumainav></mogoumainav>
          </mt-tab-container-item>
           <mt-tab-container-item id="wode">
          <me></me>
          </mt-tab-container-item>
        </mt-tab-container>

        
        <!-- 4.面部导航条 -->
        <mt-tabbar v-model="active"  fixed>
            <mt-tab-item id="shouye" @click.native="changeState(0)">
           <tabbaricon 
           :selectedImage="require('../assets/tpp-sy01.png')"
           :normalImage="require('../assets/tpp-sy02.png')"
           :focused="currentIndex[0].isSelect"
           >
           </tabbaricon>
           首页
            </mt-tab-item>

             <mt-tab-item id="reying"  @click.native="changeState(1)">
           <tabbaricon 
           :selectedImage="require('../assets/tpp-ry01.png')"
           :normalImage="require('../assets/tpp-ry02.png')"
            :focused="currentIndex[1].isSelect"
           >
           </tabbaricon>
          热映
            </mt-tab-item>

             <mt-tab-item id="yinyuan"  @click.native="changeState(2)">
           <tabbaricon 
           :selectedImage="require('../assets/tpp-yy01.png')"
           :normalImage="require('../assets/tpp-yy02.png')"
            :focused="currentIndex[2].isSelect"
           >
           </tabbaricon>
         影院
            </mt-tab-item>

             <mt-tab-item id="wode"  @click.native="changeState(3)">
           <tabbaricon 
           :selectedImage="require('../assets/tpp-wd01.png')"
           :normalImage="require('../assets/tpp-wd02.png')"
            :focused="currentIndex[3].isSelect"
           >
           </tabbaricon>
            我的
            </mt-tab-item>

            
        </mt-tabbar>
   </div>
    </div>
   
</template>
<script>
//1.导入顶部导航条子组件
import Movietop from "./cinema/comm/Movietop.vue"
import Mogoumainav from "./cinema/mogoumai/Mogoumainav.vue"
import TabBarIcon from "./cinema/TabBarIcon.vue"
import Index from "./tpp/Index.vue"
import Me from "./cinema/login/Me.vue"
//3.调用顶部子航条子组件
export default {
    data() {
        return {
            // leftmsg:"微信(16)",
            active:"shouye",
            //使用数据保存图片的焦点状态
            currentIndex:[
               {isSelect:true},
               {isSelect:false},
               {isSelect:false},
               {isSelect:false},
            ]

        }
    },//2.注册顶部导航条子组件
   
     methods: {
        // mysearch(){
        //     console.log("搜索");
        // },
        //  myadd3(){
        //     console.log("添加");
        // },
        changeState(n){
           //1:当前按钮下标
           //2.创建循环数据
           for(var i=0; i<this.currentIndex.length;i++){
               //3:如果当前下标与参数下标一致
               if(n==i){
                   this.currentIndex[i].isSelect=true;
               }else{
                  this.currentIndex[i].isSelect=false;  
               }
           }
        }
    },
     components:{
        "movietop":Movietop,
        "mogoumainav":Mogoumainav,
         "tabbaricon":TabBarIcon,
          "index":Index,
           "me":Me,

    },
}
</script>
<style>
.tpp_container{
    overflow:hidden; /*溢出隐藏 */
}
.page-wrap{
    overflow:auto; /*溢出显示滚动条 */
     padding-bottom: 60px; 
}
/* 修改tabbar 默认文字颜色 */
.mint-tabbar>.mint-tab-item{
    color:#777777;
    font-weight: 300;
}
.mint-tabbar>.mint-tab-item.is-selected{
    background-color: transparent;
    color: #FF4D64 !important;
     font-weight: 500 !important;
}
</style>

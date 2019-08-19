<template>
    <div>
       <div class="gmchangchi"><p>{{gmchangchi}}</p></div>
       <div @click="moxuanzuo()" class="yinchen" v-for="(item,i) of list.data" :key="i">
          <div class="yinchenl">
             <div class="yctitle">{{item.yctitle}}</div>
             <div class="ycdizhi">{{item.ycdizhi}}</div>
               <div class="ycpeizhi" v-for="(item,j) of item.peizhi" >
                   <span><a href="">{{item.yctuipiao}}</a></span>
                   <span><a href="">{{item.ycgaiqian}}</a></span>
                   <span><a href="">{{item.yclingshi}}</a></span>
                   <span><a href="">{{item.ycyingting}}</a></span>
                   <span><a href="">{{item.yctingche}}</a></span>
              </div>
              <div class="ycyhlie">
                   <img src="" alt="">
                   <div class="ycyouhui">
                          {{item.ycyouhui}} 
                   </div>
                   
              </div>
              <div class="biaoqianmax" v-for="(item,y) of item.biaoqianmax">
                  <div v-for="(item,v) of item.biaoqian1">
                       <div class="ycbiaoqian">
                            <span class="ycsjduan">{{item.ycsjduan}}</span>
                            <span class="ycyuyan">{{item.ycyuyan}}</span>
                            <span class="ycjiage">{{item.ycjiage}}</span>
                        </div>
                  </div>
                  <div v-for="(item,z) of item.biaoqian2">
                       <div class="ycbiaoqian">
                            <span class="ycsjduan">{{item.ycsjduan}}</span>
                            <span class="ycyuyan">{{item.ycyuyan}}</span>
                            <span class="ycjiage">{{item.ycjiage}}</span>
                        </div>
                  </div>
                  <div v-for="(item,r) of item.biaoqian3" >
                       <div class="ycbiaoqian">
                            <span class="ycsjduan">{{item.ycsjduan}}</span>
                            <span class="ycyuyan">{{item.ycyuyan}}</span>
                            <span class="ycjiage">{{item.ycjiage}}</span>
                        </div>
                  </div>
              </div>
         </div>
         <div class="yinchenr">
               <span class="ycnowjiage">{{item.ycnowjiage}}<span class="ycyuan">元起</span></span>
         </div>
       </div>
    </div>
</template>
<script>
 import mogoumailieajson from "../json/mogoumailiea.json"    
export default {
    data () {
        return {
         list:mogoumailieajson,
         gmchangchi:"今晚有场次"   
        }
    },
    methods: {
        moxuanzuo(){
            this.$router.push("/Filmseatselect")
        }
    }

}
</script>
<style>
.gmchangchi{
    width: 100%;
    height: 30px;
    color: #999999;
    background: #f5f5f5;
    font-size: 14px;
    line-height: 30px;
}
.gmchangchi p{
    margin-left: 10px;
}
.yinchen{
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 10px 0;
}
.yinchenl{
    margin-left: 5px;
}
.yctitle{
    font-size: 17px;
    color: #000000;
    font-weight: 500;
    margin: 10px 0;
}
.ycdizhi{
    font-size: 13px;
    color: #666666;
}
.ycpeizhi{
    display: flex;
    justify-content: start;
    align-items: center;  
}
.ycpeizhi span{
    background-color: transparent; 
    border: 1px solid #dddddd;
    border-radius: 2px;
    padding: 0 5px;
    margin: 5px 1px;
}
.ycpeizhi span a{
    text-decoration: none;
    font-size: 12px;
    color: #349cec;
}

.ycyhlie{
    display: flex;
    justify-content: start;
    align-items: center;    
}
.ycyouhui{
    font-size: 12px;
    color: #999999;
}
.biaoqianmax{
 display: flex;
 align-items: center;  
 justify-content: start;
}
.ycbiaoqian{
    width: 70px;
    height: 70px;
    background: #f0f0f0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border-radius: 3px;
    margin: 5px 3px;

}
.ycsjduan{
    font-size: 15px;
    font-weight: 600;
    color: #50505a;
}
.ycyuyan{
    font-size: 10px;
    color: #999999; 
}
.ycjiage{
    font-size: 12px;
    color: #ff2e62;  
}
.yinchenr{
   margin: 10px 5px;
}
.ycnowjiage{
    font-size: 15px;
    color: #ff2e62;
    font-size: 400;
}
.ycyuan{
    font-size: 10px;
    color: #999999;

}
</style>


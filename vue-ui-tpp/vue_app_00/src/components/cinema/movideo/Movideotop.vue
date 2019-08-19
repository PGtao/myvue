<template>
    <div class="container">
        <div class="mofiexd">
       <div class="movideotop">
         <div @click="moleftimg()" class="moleftimg">
            <img :src="moimgloge" alt="">    
        </div>
        <div class="morightbut">
           <button><a href="">{{moapp}}</a></button>
           <button><a href="">{{xiazai}}</a></button>
       </div>
        </div>
        <div class="myvideo"  @click="myVideo">
          <video id="video" :src="videourl" autoplay loop  muted
          width="100%" 
          ></video>
          <a class="ctrl" v-show="play=isplay">
              <img :src="playurl" alt="">
          </a>
        </div>
        <div class="moxiabiao">
           <h3>{{motitle}}</h3>
           <p>{{mobofan}}</p>
         </div>
         <div class="mo-vnav">
             <img :src="motuurl" alt="">
             <div class="mozu">
                 <span class="motopwen">{{motopwen}} <span style="color:#fea54c;font-size:12px;">:8.6</span></span>
                 <span class="moxbutwen">{{moxbutwen}}</span>
             </div>
                 <button class="moanniu" @click="goupiaoClick()">{{moanniu}}</button>
         </div>
        </div> 
    </div>
   
</template>

<script>
export default {
   data () {
       return {
            
       }
   },
   methods: {
     moleftimg(){
         this.$router.push("/Home")  
     }  
   },


   props: {
            moimgloge: {
                default: ""
            },
            moapp: {
                default: ""
            },
            xiazai: {
                default: ""
            },
            videourl: {
                default: ""
            },
            playurl: {
                default: ""
            },
            myVideo: {
                type: Function
            },
            goupiaoClick: {
                type: Function
            },
            video:{default:""},
            isplay:{default:""},
            motitle: {
                default: ""
            },
            mobofan: {
                default: ""
            },
            motuurl: {
                default: ""
            },
            motopwen: {
                default: ""
            },
            moxbutwen: {
                default: ""
            },
             moanniu: {
                default: ""
            },
          
        
   }
   
}
</script>
<style scoped>
.container{
    width: 100%;
    height: 450px;
    position: relative;
    margin-top: -10px;
}
.mofiexd{
    position: fixed;
    z-index: 100;
    background: #ffffff;
}
.movideotop{
    display: flex;
    justify-content: space-between;
     align-items: center;
     padding: 10px 0;
}
.moleftimg img{
    width: 108px;
    height: 34px;

}
.morightbut{
    display: flex;
    justify-content: space-between;

}
.morightbut button{
   border: 0px solid #8a869e;
   background: #fff;
   padding: 4px 10px;
   margin: 0 3px;
   box-sizing: border-box;
   text-align: center;
   border-radius: 4px;
  
}
.morightbut button a{
    white-space: nowrap;
    font-size: 14px;
     color: #ff4d64; 
     text-decoration: none;
}
.myvideo{
    position:relative;
}
.ctrl{
 position: absolute;
 left: 50%;
 top: 50%;
 margin-top: -30px;
 margin-left: -30px
}
.ctrl img{
  width: 60px
}
.moxiabiao h3{
 margin: 0 5px;
 font-size: 16px;
 color: #000000;
}
.moxiabiao p{
 margin: 5px 10px;
 font-size: 12px;
 color: #999;
}
.mo-vnav{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 0;
}
.mo-vnav img{
 width: 45px;
 height: 60px;

}
.mozu{
    flex-direction: column;
    display: flex;
    align-items: center;
}
.motopwen{
    color: #222227;
    overflow: hidden;
    font-weight: 500;
    font-size: 14px;  
}
.moxbutwen{
    color: #8a869e;
    overflow: hidden;
    font-weight: 500;
    font-size: 13px;  
    margin-top: 5px;  
}
.moanniu{
        width: 60px;
        height: 30px;
        color: #ff2e62;
        border: 1px solid #ff2e62;
        background: #ffffff;
        text-align: center;
        box-sizing: border-box;
        line-height: 30px;
        font-size: 12px;
        border-radius: 120px;
        margin-right: 30px;
        outline: none;
}
</style>




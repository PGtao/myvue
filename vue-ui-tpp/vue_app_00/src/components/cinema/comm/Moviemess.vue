<template lang="">
    <div class="rootstyle" @click="itemClick(id)">
                 <!-- <h2>电影</h2> -->
                <div class="leftimgandtxt">
                     <div class="imgclick" >
                       <img class="imgstyle"  :src="'http://127.0.0.1:3000/img/'+imgurl"  @click="imgClick()">                 
                       <a class="ctrl">
                         <img :src="'http://127.0.0.1:3000/img/'+playurl" alt="" @click="imgClick()"> 
                       </a>  
                     </div>
                                           
                <div class="rightofimg">
                   <span class="title">
                       {{title}}
                       <span class="peizi">
                      <span class="view">{{view}}</span>
                      <span class="movielie">{{movielie}}</span>
                       </span>
                   </span>
                    <span class="pingfen">淘票票评分：{{pingfen}}</span>
                   <span class="daoyan">导演：{{daoyan}}</span>
                   <span class="zhuyan">主演：{{zhuyan}}</span>
                </div>
               

            </div>
                <div class="rightanniu">
                     <button class="anniu" @click="anniuClick()">{{anniu}}</button>
                </div>
    </div>
</template>
<script>
    export default {
        props: {
            imgurl: {
                default: ""
            },
             videourl: {
                default: ""
            },
             playurl: {
                default: ""
            },
            title: {
                default: ""
            },
           pingfen: {
                default: ""
            },
             daoyan: {
                default: ""
            },
             zhuyan: {
                default: ""
            },
              view: {
                default: ""
            },
              movielie: {
                default: ""
            },
            anniu: {
                default: ""
            },
            id: {
                default: ""
            },
            itemClick: {
                type: Function
            },
              imgClick: {
                type: Function
            },
              anniuClick: {
                type: Function
            }
        },

        data() {
            return {

            }
        },
    }

</script>
<style scoped>
    .rootstyle {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding-bottom: 20px;
        padding-top: 10px;
    }
    
    .leftimgandtxt {
        display: flex;
    }

    .imgstyle {
        width: 60px;
        height: 100px;
    }
     .ctrl {
         position: relative;
         top: -40px;
         left: -40px;
     }
    .ctrl img{
        width: 25px;
    }
    .rightofimg {
        display: flex;
        flex-direction: column;
        justify-content: center;
        margin-left: 5px;
    }
    
    .title {
        color: #000;
        font-weight: 500;
        font-size: 16px;
    }
    .peizi{
        border: 1px solid #ddd;
        font-size: 12px;
        border-radius: 3px;
    }
    .pingfen{
        color: #666;
        font-size: 14px;
        margin-top: 3px;   
    }
    .view{
     padding: 0 5px;
     background: #AFAFAF;
     color: #fff;
     font-weight: 800;
    }
    .movielie{
     color: #AFAFAF;
     background: #FFFFFF;
     font-weight: 800;
    }
    .daoyan{
        color: #666;
        font-size: 14px;
        margin-top: 3px;
    }
    .zhuyan{
        color: #666;
        font-size: 14px;
        margin-top: 3px;
    }
    
    .rightanniu{
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .anniu{
        width: 60px;
        height: 30px;
        background: linear-gradient(45deg,#ff47a8,#ff2e62);
        border: 0;
        text-align: center;
        color:#fff;
        box-sizing: border-box;
        line-height: 30px;
        font-size: 12px;
        border-radius: 120px;
        outline: none;
    }
</style>
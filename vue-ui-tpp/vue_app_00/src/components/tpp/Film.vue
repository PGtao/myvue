<template>
  <div>
    <div class="film">
        <!-- 图片 -->
        <div style="width:110px;height:150px;background:#aaa;">
        <img class="moimg" :src="'http://127.0.0.1:3000/img/'+imgurl" alt="">
        </div>
        <!-- 名字 -->
        <p>{{title}}</p>
        <!-- 标签 -->
        <div class="label">{{label}}</div>
        <!-- 按钮 -->
        <div @click="bought" class="submit">购票</div>
      </div>
  </div>
</template>
<script>
export default {
  props:{//声明来接收父组件的数据
    title:{default:""},
    label:{default:""},
    imgurl:{default:""},
    bought:{ type: Function},
  }
}
</script>
<style scoped>
.moimg{
  width: 100%;
  height: 100%;
  overflow: hidden;
   border-radius:5px;
}
.film{
    width:110px;
    margin:0 3px;
    height:280px;
  }
  p{
    overflow: hidden;
    font-size:16px;
    height:20px;
    padding: 0;
    margin:5px 0;
    font-weight: 800;
  }
  .label{
    border:1px solid #999;
    font-size:11px;
    height: 14px;
    color: #666;
    border-radius: 2px;
    text-align: center;
    overflow: hidden;
    line-height: 14px;
    padding: 3px 2px;
  }
  .submit{
    width:50px;
    padding:5px 5px;
    color:#fff;
    text-align: center;
    margin: 3px 20px;
    border-radius:20px;
    font-size:14px;
    background-image: linear-gradient(45deg,#ff47a8,#ff2e62);
    margin-top:5px;
  }
</style>

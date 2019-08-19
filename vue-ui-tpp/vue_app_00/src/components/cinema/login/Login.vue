<template>
    <div class="login_container">
        <div class="logo tb-logo"></div>
        <div>
            <div>
                <input type="text" class="a-input" placeholder="手机号/邮箱/会员名" v-model="uname">
                <input type="password" class="a-input" placeholder="请输入密码" v-model="upwd">
            </div>
            <div class="a-field">
                <a href="" class="f-left">短信验证码登录</a>
                <a href="" class="f-right">免费注册</a>
            </div>
            <div>
                <button type="submit" class="a-button" @click="login">登 录</button>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:"",
            upwd:"",
        }
    },
    methods: {
        login(){
            //完成登陆
            //1.获取用户名和密码
            var u=this.uname;
            var p=this.upwd;
            //创建一个正则表达式  字母数字下划线3-12位
            var reg=/^[a-z0-9_]{3,12}$/i;
            //验证用户名 出错提示
            if(!reg.test(u)){
                this.$messagebox("请输入会员名");
                return;
            }
            if(!reg.test(p)){
                this.$messagebox("请输入密码");
                return;
            }
            //发送ajxa请求
            var url="login";
            var obj={uname:u,upwd:p
            };
            this.axios.get(url,{params:obj}).then(result=>{
                  console.log(result);
            //判断服务器返回结果
            //code>0 跳转组件
            if(result.data.code>0){
                this.$router.push("/Logined");
            }else{
                this.$messagebox("用户名或密码不正确");
            }
            //创建xz/home.vue
            //code<0 交互提示框
            })
        }
    },
}
</script>
<style scoped>
.login_container{
    width:359px;
    height:411.25px;
    margin-top:40px;
    background-color:#fff;
}
.logo {
    width:80px;
    height:80px;
    background: url(https://gw.alicdn.com/tfs/TB1p.BGQXXXXXbFXFXXXXXXXXXX-160-160.png) no-repeat;
    background-size: contain;
    margin: 1.25333333rem auto 0;
}
.a-input{
    padding:5px;
    font-size:inherit;
    margin-top:60px;
    margin-left:15px;
    BORDER-TOP-STYLE: none;
    BORDER-RIGHT-STYLE: none;
    BORDER-LEFT-STYLE: none;
    BORDER-BOTTOM:1px solid #FF6700;
    width:329px;
    height:26.5px;
}
input:focus{
    outline: none;
}
.a-field {
    font-size:12px;
    margin: .69333333rem auto 0;
    display: flex;
    flex-flow: row nowrap;
    justify-content: space-between;
}
.a-field a{
    text-decoration:none;
    outline:none;
    color:#555555;
    font-size:15px;
    margin-top:10px;
}
.f-left{
    margin-left:16px;
}
.f-right{
    margin-right:7px;
}
.a-button{
    color:#fff;
    background: -webkit-linear-gradient(left,#ff9000,#ff5000) no-repeat;
    margin-top:40px;
    margin-left:16px;
    font-size:20px;
    width:329px;
    line-height:45px;
    border-radius:50px;
    text-align: center;
    border: 0;
}
.a-button:focus{
    outline: none;
}
.mint-msgbox{
    border-radius:10px !important;
}
.mint-msgbox-header{
    height:41.5px !important;
}
.mint-msgbox-title{
    color: #6c6c6c !important;
    font: inherit !important;
}
.mint-msgbox-confirm {
    color: #f40 !important;
    width: 50%;
}
</style>


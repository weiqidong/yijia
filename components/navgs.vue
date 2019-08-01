<template>
    <div class="nav">
        <ul class="nav-left">
            <li>
                <img src="../assets/img/logo1.png">
            </li>
            <li class="border-b"><router-link tag="a" :to="'/'">首页</router-link></li>
            <li class="border-b"><router-link tag="a" :to="'/faxian'">发现</router-link></li>
            <li class="border-b"><router-link tag="a" :to="'/gs'">故事</router-link></li>
        </ul>
        <ul class="nav-right">
            <li class="reg"><router-link tag="a" :to="'/reg'">注册</router-link></li>
            <li class="login"><router-link tag="a" :to="'/Login'">登录</router-link></li>
        </ul>
    </div>
</template>
<script>
export default {
    name:"navgs",
    data(){
        return{}
    }
}
</script>
<style scoped>
.nav-left{
    margin-left: 50px;
}
 .nav{
    background-color: rgba(255, 255, 255,1);
    color: #000;
    display: flex;
    justify-content: space-around;
    height: 80px;
    z-index: 100;
    border-bottom: 1px solid #ddd;
    border-top: 1px solid #ddd;
    box-shadow: 1px 1px 3px 3px #ccc inset;
    position: fixed;
    width: 100%; 
}
.nav ul{
    list-style: none;
    display: flex;
    justify-content: space-around;
}
.nav img{
    width: 80px;
    height: 80px;
    margin-top: -15px;
}
.nav li{
    color: #000;
}
.nav li a{
    color: #000;
    font: bold;
    font-size: 20px;
    text-decoration: none;
    display: block;
    width: 100px;
    margin-top: 15px;
}
.nav .nav-right a:hover{
    color: #3d97e3;
}
.nav .nav-right a{
    font-size: 16px;
}
.nav .nav-right{
    margin-right: 100px;
    margin-left: -80px;
}
.nav a:hover{
    color:#fb6720;    
}
.nav .reg{
    margin-left: 100px;
}
.nav .login{
    margin-left: 10px;
}
</style>
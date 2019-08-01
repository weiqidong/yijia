<template>
    <div class="nav">
        <ul>
            <li>
                <img src="../assets/img/logo.png">
            </li>
            <li class="border-b"><router-link tag="a" :to="'/'">首页</router-link></li>
            <li class="border-b"><router-link tag="a" :to="'/faxian'">发现</router-link></li>
            <li class="border-b"><router-link tag="a" :to="'/gs'">故事</router-link></li>
        </ul>
        <ul class="nav-right">
            <li class="login" @click="logout"><p>{{lo}}</p><router-link tag="a" :to="l">{{c}}</router-link></li>
            <li class="reg" @click="goto"><router-link tag="a" :to="r">{{reg}}</router-link></li>
        </ul>
    </div>
</template>
<script>
export default {
    name:"navtop",
    data(){
        return{
            lo:"",
            l:"/Login",
            c:"登录",
            reg:'注册',
            r:'/reg'
        }
    },
    created() {
       this.load(); 
    },
    methods: {
        load(){
            if(sessionStorage.getItem("phone")){
            this.lo=sessionStorage.getItem("phone")+",";
            this.c="退出";
            this.l="/";
            this.r="";
            this.reg="个人中心";
            }
        },
        logout(){
            if(this.l==="/"){
                sessionStorage.removeItem("phone");
                location.reload();
            }
        },
        goto(){
            if(this.r==""){
                this.$router.push('/UserInfo');
            }
        }
    },
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
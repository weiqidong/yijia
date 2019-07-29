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
            <li class="reg"><router-link tag="a" :to="'/reg'">注册</router-link></li>
            <li class="login" @click="logout">{{lo}}<router-link tag="a" :to="l">{{c}}</router-link></li>
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
            ad:false
        }
    },
    created() {
       this.load(); 
    },
    methods: {
        load(){
            if(sessionStorage.length>0){
            this.lo=sessionStorage.getItem("phone")+",";
            this.c="退出";
            this.l="/";
            this.ad=true;
            }
        },
        logout(){
            if(this.l=="/"){
                sessionStorage.removeItem("phone");
                location.reload();
            }
        }
    },
}
</script>
<style scoped>
 .nav{
    background-color: rgba(0, 0, 0,0.4);
    color: #fff;
    display: flex;
    justify-content: space-between;
    height: 80px;
    width: 100%;
    position: fixed;
    z-index: 100;
}
.nav ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
}
.nav img{
    width: 80px;
    height: 80px;
    margin-top: -15px;
}
.nav li a{
    color: #fff;
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
}
.nav button{
    background-color: #3d97e3;
    color: #fff;
    font-size: 16px;
    margin-right: 200px;
}
.nav a:hover{
          color:#fb6720;
         
}

</style>
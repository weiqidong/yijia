<template>
    <div class="nav">
        <ul>
            <li>
                <img src="../assets/img/logo.png">

            </li>
            <li class="border-b"><a href="#">首页</a></li>
            <li class="border-b"><a href="#">发现</a></li>
        </ul>
        <ul class="nav-right">
            <li class="reg"><a href="#">注册</a></li>
            <li class="login"><a href="#">登录</a></li>
        </ul>
    </div>
</template>
<script>
export default {
    name:"navtop",
    data(){
        return{}
    }
}
</script>
<style scoped>
 .nav{
    background-color: rgba(0, 0, 0,0.5);
    color: #fff;
    display: flex;
    justify-content: space-between;
}
.nav ul{
    list-style: none;
    display: flex;
    justify-content: space-between;
}
.nav img{
    width: 80px;
    height: 80px;
}
.nav li a{
    color: #fff;
    font: bold;
    font-size: 20px;
    text-decoration: none;
    display: block;
    padding: 32px;
}
.nav li.border-b:hover{
    border-bottom: 3px solid #fff;
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
    margin-right: 180px;
}

</style>







<template>
   <div class="nav ">
        <ul class="clearfix">
            <li><img src="../assets/img/logo.png" alt=""></li>
            <li><a href="#">首页</a></li>
            <li><a href="#">发现</a></li>
            <li><a href="#">故事</a></li>
            <li><a href="#">登录</a></li>
            <li><a href="#">注册</a></li>
        </ul>
    </div>
</template>
<script>
  
</script>
<style scoped>
.clearfix:after{
    display: block;            
    content:'';           
    clear: both;
    height:0;
    }
.nav{
       height:80px;
       line-height:80px;
       background:rgba(0, 0, 0, 0.5);
   
       border-radius:0 0 15px 15px;
}
.nav ul{
    list-style: none;
}
.nav img{
    width: 80px;
    height: 80px;
}
.nav li{
         float:left;
         width:100px;
         text-align:center;
}
.nav a{
         display:block;
         color:#fff;
         text-decoration: none;
         font-size: 20px;
}
.nav a:hover{
          color:white;
         
}


</style>





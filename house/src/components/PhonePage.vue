<template>
    <div class="child2">
      <!-- 手机号 -->
        <el-input v-model="phone" class="elphone" placeholder="请输入手机号"></el-input><span>{{phonet}}</span>
        <!-- 验证码 -->
        <el-input v-model="cpwd" class="elcpwd" placeholder="请输入验证码"></el-input><span>{{upwdt}}</span>
        <!-- 获取验证码 -->
        <el-button type="primary">获取验证码</el-button>
        <a href="javascript:;">忘记密码?</a>
        <!-- 登录按钮 -->
        <el-button class="elbutt" type="primary" @click="onlogin">登陆</el-button>
    </div>
</template>

<script>
    export default {
      name: 'child1',
      data(){
        return{
          phone:"",
          cpwd:"",
          phonet:"",
          upwdt:""
        }
      },
      methods:{
        onlogin(){
          var u=this.phone;
      var p=this.upwd;
      var log=/^[1][3,4,5,7,8]\d{9}$/;
      if(!log.test(u)){
        this.phonet="*用户名格式不正确";
        }else{
          this.phonet="";
        }
        var url="login";
        var obj={phone:u }
        this.axios.get(url,{params:obj}).then(result=>{
        if(result.data.code>0){
        this.$router.push("/");
        }else {        
        this.phonet="账号或密码不正确"
       } 
      })      
        }
      }
    }
</script>
<style scoped>
.elphone,.elbutt{
   width: 350px !important;
}
.child2{
  width: 450px;

}
.elphone{
  width: 300px;
  margin-bottom: 20px;
}
.elcpwd{
  width: 238px;
  margin-bottom: 20px;
}
.el-button{
  margin-left: 0px;
}
a{
  margin-left: 50%;
  color: #959ea7;
  text-decoration: none;
}
span{
  color: #f00;
  font-size: 12px;
}
.elbutt{
  width: 300px;
  margin-top: 10px;
}
</style>
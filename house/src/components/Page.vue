<template>
<!-- 普通登陆 -->
    <div class="child1">
      <!-- 账号 -->
        <el-input v-model="phone" class="elin" placeholder="请输入手机号"></el-input><span>{{phonet}}</span>
        <!-- 密码 -->
        <el-input v-model="upwd" class="elup" type="password" placeholder="请输入密码"></el-input><span>{{upwdt}}</span>
        <div><a href="javascript:;">忘记密码?</a></div>
        <!-- 登陆按钮 -->
        <el-button class="elbutt" type="primary" @click="onlogin">登陆</el-button>
    </div>
</template>

<script>
    export default {
      name: 'child1',
      data(){
        return{
          phone:"",
          upwd:"",
          phonet:"",
          upwdt:""
        }
      },
      methods:{
        onlogin(){
          var u=this.phone;
        var p=this.upwd;
        var log=/^[1][3,4,5,7,8]\d{9}$/;
        var reg=/^\w{6,18}$/i;
        if(!log.test(u)){
          this.phonet="*用户名格式不正确";
          
        }else{
          this.phonet=""      
          if(!reg.test(p)){
            this.upwdt="*密码格式不正确";
            return
          }else{
            this.upwdt=""            
          }
        }
        var url="/login";
        var obj={phone:u,upwd:p}
      this.axios.get(url,{ params:obj}).then(result=>{
        if(result.data.code>0){
          sessionStorage.setItem("phone",u);
          this.$router.push("/");
        }else {        
        this.upwdt="账号或密码不正确"
       } 
      })
       }   
     }     
   } 
</script>
<style scoped>
.el-input,.el-button{
  width: 300px !important;
}
.child1{
  width: 450px;

}
.elin {
  width: 400px;
  margin-bottom: 20px;
}
.elup{
  width: 400px;
  margin-bottom: 20px;
}
span{
  color: #f00;
  font-size: 10px;
}
a{
  margin-left: 50%;
  color: #959ea7;
  text-decoration: none;
}
.elbutt{
  width: 300px;
  margin-top: 10px;
}
</style>
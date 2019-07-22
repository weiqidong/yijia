<template>
  <div>
    <div class="bg">
      <!-- 顶部导航栏 -->
      <heade></heade>
      <div class="reg">
        <!-- 用户注册 -->
        <div>
          <p>用户注册</p>
        </div>
        <!-- 手机号 -->
        <div>
          <el-input v-model="phone" placeholder="请输入手机号" @blur="onphone()" class="phone"></el-input><span style="color:red">{{pla}}</span>
        </div>
        <!-- 验证码 -->
        <div class="divspan">
          <el-input v-model="verification" placeholder="请输入验证码" class="verification" @blur="veri()"></el-input><span class="smbg" @click="disa">{{dis}}</span>
          <span>{{ver}}</span>
        </div>
        <!-- 短信验证码 -->
        <div>
          <el-input v-model="phoneVer" placeholder="请输入手机验证码" class="phoneVer"  @blur="onver"></el-input>
          <span><el-button type="primary" @click="onick">获取手机验证码</el-button></span><span>{{pver}}</span>
        </div>
        <!-- 登陆密码 -->
        <div>
          <el-input v-model="upwd" placeholder="登录密码" type="password" class="upwd" @blur="pwds"></el-input><span>{{pwd}}</span>
        </div>
        <!-- 邀请码（选填） -->
        <div>
          <el-input v-model="fromId" placeholder="邀请码(选填)" class="fromid"></el-input>
        </div>
        <!-- 个人邮箱 -->
        <div>
          <el-input v-model="email" placeholder="常用邮箱" @blur="emails" class="emlias"></el-input><span>{{emaill}}</span>
        </div>
        <div>
          <el-checkbox v-model="checked"></el-checkbox> 
        </div>
        <!-- 用户需知 -->
        <div>
            <b>注册即代表同意</b><span><a href="javascript:;">《艺家网服务协议》</a></span><span><a href="javascript:;">《隐私政策》</a></span>
        </div>
        <!-- 信息提交 -->
        <div>
          <el-button type="primary" class="button" @click="onbutton">注册</el-button>
        </div>     
      </div>  
    </div>
    <!-- 底部 -->
    <hflooter></hflooter>
  </div> 
</template>
<script>
import Hflooter from "../components/Hflooter"
import Header from "../components/Header"
export default {
  data(){
    return{
      phone:"",
      verification:"",
      phoneVer:"",
      upwd:"",
      fromId:"",
      email:"",
      checked: true,
      pla:"",
      ver:"",
      pver:"",
      pwd:"",
      emaill:"",
      dis:`${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}`
    }
  },
  methods:{
    onphone(){
      var reg=/^[1][3,4,5,7,8]\d{9}$/;
      if(this.phone==""){
        this.pla="*手机号不能为空"
      }else{
        if(!reg.test(this.phone)){
          this.pla="*手机号格式不正确"
        }else{
          this.axios.get("/reg1",{params:this.phone}).then((result)=>{
            if(result.data.code>0){
              this.pla=""
            }else{
              this.pla="手机号已存在"
            }
          })
        }
      }
    },
    veri(){
      if(this.verification==""){
        this.ver="*验证码不能为空"
      }else if(this.verification==this.dis){
        this.ver=""
      }
    },
    disa(){
      this.dis=`${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}`
    },
    onver(){
      if(this.phoneVer==""){
        this.pver="*请输入手机验证码"
      }
    },
    pwds(){
      var pwda=/^\w{6,18}$/
      if(this.upwd==""){
        this.pwd="*密码不能为空"
      }else{
        if(!pwda.test(this.upwd)){
          this.pwd="*请输入6~18位数字或者字母"
        }else{
          this.pwd=""
        }
      }
    },
    onick(){

    },
    emails(){
      var emaile=/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
      if(this.email==""){
        this.emaill="*邮箱不能为空"
      }else{
        if(!emaile.test(this.email)){
          this.emaill="*请输入正确格式的邮箱"
        }else{
          this.emaill=""
        }
      }
    },
    onbutton(){
      var url="/reg";
      if(this.verification==this.dis){
        this.ver=""
      }else{
        this.ver="*验证码不正确"
        this.dis=`${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}${Math.floor(Math.random()*10)}`
      }
      let params = new URLSearchParams()
    params.append('phone', this.phone)
    params.append('upwd', this.upwd)
    params.append('email', this.email)
      this.axios.post(url,params, {headers: { 'Content-Type': 'application/x-www-form-urlencoded' }}).then(result=>{
        if(result.data.code==1){
          this.$router.push("/Login")
        }
      })
    }
  },
  components:{
    "heade":Header,
    "hflooter":Hflooter,
    
  }
}
</script>
<style scoped>
  .bg{ 
    width: 100%;  
    background: url("../reg_bg.png")  no-repeat;
    height:900px;
    padding-top: 10px;
  }
  .smbg{
    display: inline-block;
    font-size: 20px;
    text-align: center;
    width: 140px;
    background: url("../assets/1.png"); 
    margin-left: 10px;
    font-family: Apple Chancery;
  }
  .reg{
    width: 550px;
    background-color: rgba(0,0,0,.3);
    padding-bottom: 30px;
    margin-left: 30%;
  }
  .reg>div{
    width: 550px;
    margin-bottom:10px;
    margin-left: 40px;
  }
  div>p{
    margin-top: 0;
    font-size: 30px;
    color: #fff;
    padding-top: 20px;
  }
  a{
    text-decoration: none;
    margin-left: 10px;
  }
  .phone,.upwd,.fromid,.emlias{
    width: 320px;
  }
  .verification{
    width:170px;
  }
  .phoneVer{
    width: 170px;
  }
  span{
    font-size:10px;
    color: red;
  }
  b{
    font-size:10px;
  }
  .button{
    width: 320px;
  }
</style>
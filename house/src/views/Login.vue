<template>
  <div>
    <div class="bg">
      <heade></heade>
      <div class="smbg">
        <!-- 普通登陆 -->
        <el-tabs v-model="activeName" class="tabs" @tab-click="handleClick">
            <el-tab-pane label="普通登陆" id="pag" name="first" style="font-size:20px !impartent" :key="'first'">
                <page></page>
            </el-tab-pane>
            <!-- 短信快捷方式 -->
            <el-tab-pane label="短信快捷登陆" name="second" :key="'second'">
                <phonepage></phonepage>   
            </el-tab-pane>
        </el-tabs>
        <!-- 合作网站账号登陆 -->
        <div class="imgs">
          <p>合作网站账号登录</p>
          <ul>
            <li><img src="../assets/QQ.png" alt=""></li>
            <li><img src="../assets/weixin_1.png" alt=""></li>
            <li><img src="../assets/weibo.png" alt=""></li>
          </ul>
        </div>
      </div>
    </div>
    <hflooter></hflooter>
  </div>
</template>
<script>
import Header from '../components/Header'
import Hflooter from '../components/Hflooter'
import Page from '../components/Page'
import PhonePage from '../components/PhonePage'
export default {
  data(){
    return{
      activeName: "first",
      isChildUpdate1:true,
      isChildUpdate2:false,
      phone:"",
      upwd:"",
    }
  },
  methods:{
        handleClick(tab) {
            if(tab.name == "first") {
                this.isChildUpdate1 = true;
                this.isChildUpdate2 = false;
            } else if(tab.name == "second") {
                this.isChildUpdate1 = false;
                this.isChildUpdate2 = true;
            }
        },
    },
  components:{
    "heade":Header,
    "hflooter":Hflooter,
    "page":Page,
    "phonepage":PhonePage
  }
}
</script>
<style scoped>
.bg{
  background: url("../reg_bg.png");
  height: 900px;
}
.tabs{
  padding-left : 20%;
  padding-top: 5%;
}
.smbg{
  width: 550px;
  height: 450px;
  background-color:#fff;
  margin-left: 30%;
}
a{
  padding-left: 60%;
  color: #959ea7;
  text-decoration: none;
}
.elbutt{
  width: 300px;
  margin-left: 20%;
  margin-top: 10px;
}
.imgs{
  margin-left: 12%;
}
img{
  width: 40px;
}
p{
  padding-left: 8%;
  font-size: 20px;
}
ul{
  margin: 0;
}
ul>li{
  list-style: none;
  margin-right: 20px;
  float: left;
}
</style>
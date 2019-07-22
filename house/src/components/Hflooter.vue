<template>
<div class="Hflooter">
  <div class="foot">
    <div class="logo">
      <img src="../assets/img/logo1.png" alt="">
      <p>找民宿，主艺家</p>
      <h4>艺家总部：</h4>
      <p>济南历下区山大路数码港A座</p>
    </div>
    <div>
      <div class="app">
      <img src="../assets/yijia.png" alt="">
        </div>
      <div class="qq">
        <img src="../assets/weixin.svg" alt="">
        <img src="../assets/weibo.svg" alt="">
      </div>
    </div>
    <div class="right">
      <div class="guanyu">
      <ul>
        <h4>关于我们</h4>
        <li>关于艺家</li>
        <li>关注我们</li>
        <li>联系我们</li>
      </ul>
    </div>
    <div class="tel">
      <h4>国内客服电话</h4>
      <p >400-800-1234</p>
      <h4>海外港澳台客服电话</h4>
      <p class="num" >0086-721-28156888</p>
      <p class="num">0086-12-25514777</p>
    </div>
    </div>
    
  </div >
  <ul class="footer">
      <li>{{ips}} </li>
      <li>{{ipj}}</li>
      <li>{{ipi}}</li>
    </ul>
</div>
  
</template>
<script>
export default {
  data(){
    return{
      ips:"© 2019 yijia.com艺家版权所有",
      ipj:"京ICP备17006481号",
      ipi:"京公网安备11010502027121",
    }
  }
}
</script>
<style scoped>
.Hflooter{
  padding-top: 20px;
  height: 300px;
  background-color: #eee;
}
.right{
  display: flex;
  flex-direction: row;
  margin-top:-15px;
}
.guanyu ul{
  list-style: none;
  margin-right: 50px;
}
.guanyu li{margin-top: 5px;}
.app img{
  width: 150px;
  height: 150px;
}
.qq img{
  width: 40px !important;
  height: 40px !important;
  margin: 10px;
}
.logo{
  text-align: left;
}
.logo p{
  margin: 0;
  margin-top: -5px;
}
.logo img{
  width: 100px;
  height: 100px;
}
.tel{
  text-align: left;
}
.tel h5{
  margin-bottom: 5px !important;
} 
.tel p{
  font-size: 20px;
  margin: 0px;
}
.foot{
  width: 1300px;
  height:130px;
  margin: 0 auto;
  padding-bottom: 100px;
  display: flex;
  /* flex-direction: row; */
  justify-content: space-around;
}
.footer {
  margin-left: 30%;
  
}
 .footer li{
   float: left;
   list-style-type: none;
   margin-left: 10px;
 }
 ul{
   margin-bottom: 30px;
 }
</style>
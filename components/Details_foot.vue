<template>
  <div class="details_foot">
    <div class="foot_left">
      <span class="foot_left_1">国内客服电话</span>
      <span class="foot_left_2">400-199-8888</span>
      <span class="foot_left_3">海外及港澳台客服电话</span>
      <span class="foot_left_4">0086-571-25515588</span>
      <span class="foot_left_5">0086-10-12237799</span>
    </div>
    <div class="foot_main">
      <span class="foot_main_1">关注艺家</span>
      <div class="foot_main_icon">
        <a href="javascript:;">
          <img class="foot_main_img" src="../../public/img/foot/weibo.png" alt="">
        </a>
        <a href="javascript:;">
          <img class="foot_main_img" src="../../public/img/foot/QQ.png" alt="">
        </a>
      </div>
    </div>
    <div class="foot_right">
      <span class="foot_right_1">关注微信小程序</span>
      <a href="javascript:;">
        <img class="foot_right_img" src="../../public/img/foot/weixin.png" alt="">
      </a>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {}
  }
}
</script>
<style scoped>
.details_foot{
  display: flex;
  justify-content: space-around;
  width:1190px;
  margin:0 auto;
  padding-top:50px;
}
.details_foot span{
  display: block;
}
.details_foot .foot_left .foot_left_1{
  font-size:14px;
}
.details_foot .foot_left .foot_left_2{
  font-size:20px;
  margin-top:10px;
}
.details_foot .foot_left .foot_left_3{
  font-size:14px;
  margin-top:20px;
}
.details_foot .foot_left .foot_left_4{
  font-size:20px;
  margin-top:10px;
}
.details_foot .foot_left .foot_left_5{
  font-size:20px;
}
.details_foot .foot_main{
  text-align:center;
}
.details_foot .foot_main .foot_main_1{
  font-size:14px;
}
.details_foot .foot_main .foot_main_icon{
  margin-top:10px;
}
.details_foot .foot_right .foot_right_1{
  font-size:14px;
}
.details_foot .foot_right .foot_right_img{
  width:98px;
  height:98px;
  margin-top:10px;
}
.details_foot .foot_main .foot_main_img{
  width:50px;
  height:50px;
  margin:0 10px;
}
</style>



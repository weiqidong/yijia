<template>
  <div class="div">
     <!-- 顶部导航 -->
      <div>
        <i>&lt;</i><span> <router-link tag="a" :to="'/'">返回首页</router-link> </span>
      </div>
      <!-- 网页商标 -->
      <div>
        <img src="../assets/2.png" alt=" ">
      </div>
  </div>
</template>
<script>
export default {
  data(){
    return{}
  }
}
</script>
<style scoped>
.div{
  height: 270px;
}
div{
    padding-top: 20px;
  }
  a{
    font-size: 20px;
    color: #fff;
    text-decoration: none;
  }
  i{
    margin-left: 10%;
    color: #fff;
  }
  img{
    margin-left: 40%;
    width: 150px;
    height: 150px;
  }
</style>
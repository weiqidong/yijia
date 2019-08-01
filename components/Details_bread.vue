<template>
  <div class="breadcrumb">
    <a class="breadcrumb_a" href="#">艺家网</a>
    <span class="breadcrumb_span">></span>
    <a class="breadcrumb_a" href="#">{{cname}}公寓住宿</a>
    <span class="breadcrumb_span">></span>
    <span>{{cname}}公寓住宿</span>
  </div>
</template>
<script>
export default {
  data(){
    return {}
  },
  props:["cname"]
}

</script>
<style scoped>
.breadcrumb{
  width:1190px;
  margin:20px auto;
}
.breadcrumb .breadcrumb_a{
  text-decoration: none;
  color:black;
}
.breadcrumb .breadcrumb_span{
  margin:0 10px;
}
</style>



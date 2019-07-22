<template>
    <div class="ty">
        <div><h1>温馨与舒适</h1></div>
        <el-row type="flex" class="row-bg" justify="space-around">
            <el-col :span="6">
                <div class="grid-content bg-purple">
                    <div class="box">
                        <img src="index/blog-1.jpg" alt="">
                    </div>
                    
                    <h4>It S Classified How To Utilize Free</h4>
                    <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                    <h6>date title_color</h6>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple-light">
                    <div class="box">
                        <img src="index/blog-2.jpg" alt="">
                    </div>
                   
                    <h4>It S Classified How To Utilize Free</h4>
                    <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                    <h6>date title_color</h6>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content bg-purple">
                    <div class="box">
                        <img src="index/blog-3.jpg" alt="">
                    </div>
                    
                    <h4>It S Classified How To Utilize Free</h4>
                    <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                    <h6>date title_color</h6>
                </div>
            </el-col>
        </el-row>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style>
    .ty .el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .ty .el-col {
    border-radius: 4px;
  }
  .ty .bg-purple-dark {
    background: #fff;
  }
  .ty .bg-purple {
    background: #fff;
  }
  .ty .bg-purple-light {
    background: #fff;
  }
  .ty .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .ty .row-bg {
    padding: 10px 0;
    background-color: #fff;
  }
  .ty .box{
       overflow: hidden; 
       width: 360px;
       height: 260px;
  }
  .ty img:hover{
      /* transform: scale(1.2,1.2); */
      transition: all 1s linear;
      transform: rotate3d(1,1,1,30deg) scale(1.5,1.5);
  }
</style>

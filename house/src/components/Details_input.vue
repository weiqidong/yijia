<template>
  <div class="details_input">
    <div class="input">
      <div class="address">
        <i class="el-icon-map-location"></i>
        <el-select v-model="select" slot="prepend" placeholder="请选择">
          <el-option label="北京" value="1"></el-option>
          <el-option label="上海" value="2"></el-option>
          <el-option label="济南" value="3"></el-option>
        </el-select>
      </div>
      <div class="block">
        <i class="el-icon-edit-outline"></i>
        <el-date-picker
          v-model="value1"
          type="daterange"
          range-separator="至"
          start-placeholder="开始日期"
          end-placeholder="结束日期">
        </el-date-picker>
      </div>
      <div class="people">
        <i class="el-icon-user"></i>
        <el-select v-model="select" slot="prepend" placeholder="不限">
          <el-option label="1人" value="1"></el-option>
          <el-option label="2人" value="2"></el-option>
          <el-option label="3人" value="3"></el-option>
          <el-option label="4人" value="4"></el-option>
          <el-option label="5人" value="5"></el-option>
          <el-option label="5人以上" value="6"></el-option>
        </el-select>
      </div> 
      <div class="select">
        <el-button type="primary" icon="el-icon-search">搜索</el-button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      select:"",
      value:"",
      value1:""
    }
  }
}
</script>
<style scoped>
.details_input .input{
  height:70px;
  margin-top:10px;
  display:flex;
  text-align: center;
  line-height: 70px;
  background-color: #b1c7d6;
}
.details_input .input .address{
  margin-left:10px;
}
.el-button{
  padding:6px;
  margin-left:20px;
  width:120px;
  height:40px;
}
</style>



<template>
  <div>
    <div>
      <div>
        <h3>订单信息</h3>
        <hr>
        入住时间段：<el-date-picker
      v-model="value7"
      type="daterange"
      align="right"
      unlink-panels
      range-separator="至"
      start-placeholder="开始日期"
      end-placeholder="结束日期"
      :picker-options="pickerOptions2">
    </el-date-picker>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {

    }
  }
}
</script>
<style scoped>

</style>

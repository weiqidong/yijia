<template>
  <div class="details_page">
    <div></div>
    <!--
    <el-pagination
      @size-change="handleSizeChange"
      @current-change="handleCurrentChange"
      :current-page="currentPage4"
      :page-sizes="[100, 200, 300, 400]"
      :page-size="100"
      layout="total, sizes, prev, pager, next, jumper"
      :total="400">
    </el-pagination>
    -->
    <el-pagination
      background
      layout="prev, pager, next"
      :total="1000"
      @click="loadMore">
    </el-pagination>
  </div>
</template>
<script>
export default {
  data(){
    return {
      //currentPage4: 1
    }
  },
  /*
  methods: {
    handleSizeChange(val) {
      console.log(`每页 ${val} 条`);
    },
    handleCurrentChange(val) {
      console.log(`当前页: ${val}`);
    }
  },*/
}
</script>
<style scoped>
.details_page{
  margin-top:50px;
  margin-bottom:50px;
  display: flex;
  justify-content: space-between;
}
</style>



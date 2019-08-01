<template>
  <div>
    <div class="nav">
      <div>
        <div class="dingdan">订单信息</div>
        <div class="times">
        入住时段：<el-date-picker
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
        <div class="times">
          预定数量：<el-select v-model="value8" filterable placeholder="请选择">
    <el-option
      v-for="item in options1"
      :key="item.value"
      :label="item.label"
      :value="item.value">
    </el-option>
  </el-select>
        </div>
        <div  class="times">
          预定人数：<el-select v-model="value9" filterable placeholder="请选择">
    <el-option
      v-for="item in options"
      :key="item.value"
      :label="item.label"
      :value="item.value">
    </el-option>
  </el-select>
        </div>
      </div>
      <div>
        <div  class="dingdan">入住人信息</div>
        <div  class="times">
          姓名：<el-input v-model="cname" class="elin" ></el-input>
        </div>
        <div  class="times">
          手机：<el-input v-model="cphone" class="elin" ></el-input>
        </div>
        <div  class="times">
          证件：<el-input placeholder="请输入内容" v-model="input5" class="input-with-select">
                <el-select v-model="select" slot="prepend" placeholder="请选择" class="navs">
                  <el-option label="身份证" value="1"></el-option>
                  <el-option label="军官证" value="2"></el-option>
                </el-select>
              </el-input>
        </div>
      </div>
      <div>
        <div class="dingdan">退订规则</div>
        <div>未入住/提前离店 收取剩余房费的50%</div>
      </div>
      <div>
        <p>全额预付：需预付全额房费</p>
        <p>无需确认：预定无需等待，订单闪电确认</p>
        <div>
          <el-checkbox v-model="checked"></el-checkbox>
          <span>我已阅读并同意<a href="javascript:;">《艺家网服务条款》 </a> 和上述入住须知</span>
          <div><el-button type="primary">提交订单</el-button></div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      pickerOptions2: {
          shortcuts: [{
            text: '最近一周',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近一个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近三个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
              picker.$emit('pick', [start, end]);
            }
          }]
        },
        value7: [new Date(sessionStorage.getItem("value3")),new Date(sessionStorage.getItem("value7"))],
        options1: [{
          value: '选项1',
          label: '1套'
        }, {
          value: '选项2',
          label: '2套'
        }, {
          value: '选项3',
          label: '3套'
        }],
        value8: '',
        options: [{
          value: '选项1',
          label: '1人'
        }, {
          value: '选项2',
          label: '2人'
        }, {
          value: '选项3',
          label: '3人'
        }],
        value9: '',
        cname:'',
        cphone:'',
        input5: '',
      select: '',
      checked: true
    }
  }
}
</script>
<style scoped>
 .nav{
   width: 65%;
   margin-left: 10%;
   border: 1px solid #ccc;
 }
  .nav>div{
    margin-top: 3%;
  }
  .dingdan{
    width: 90%;
    border-bottom:1px solid #ccc;
    font-size: 20px;
    margin-left: 5%;
  }
  .times{
    margin: 3% 0 0 5%;
  }
  .elin{
    width: 30%;
  }
 .el-select .el-input {
    width: 130px;
  }
   .input-with-select .el-input-group__prepend {
    background-color: #fff;
  }
  .navs{
    width: 100px;
  }
  .input-with-select{
    width: 35%;
  }
</style>

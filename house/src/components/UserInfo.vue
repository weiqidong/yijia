    <template>
        <div id="container">
            <navtop></navtop>
            <div id="center">
                <el-container>
                    <el-aside>
                        <div class="info">
                            <div id="img">
                            </div>
                            <ul>
                                <li><a href="javascript:;">{{iphone}}</a></li>
                                <li><a href="javascript:;">修改个人资料</a></li>
                                <li><a href="javascript:;">钻石卡绑定</a></li>
                            </ul>
                        </div>
                        <el-card class="card">
                            <div slot="header" class="title">
                                <img src="../assets/dingdan.png" alt="">
                                <span>我的订单</span>
                            </div>
                            <ul>
                                <li><a href="javascript:;">订单管理</a></li>
                                <li><a href="javascript:;">点评管理</a></li>
                            </ul>
                        </el-card>
                        <el-card class="card">
                            <div slot="header"  class="title">
                                <img src="../assets/zichanqingkuang.png" alt="">
                                <span>我的资产</span>
                            </div>
                            <ul>
                                <li><a href="javascript:;">账户余额</a></li>
                                <li><a href="javascript:;">收款账号</a></li>
                                <li><a href="javascript:;">我的VIP卡</a></li>
                                <li><a href="javascript:;">我的红包</a></li>
                                <li><a href="javascript:;">我的积分</a></li>
                            </ul>
                        </el-card>
                        <el-card class="card">
                            <div slot="header" class="title">
                                <img src="../assets/gerenyonghutouxiang2.png" alt="">
                                <span>个人中心</span>
                            </div>
                            <ul>
                                <li><a @click="show1" href="javascript:;">个人资料</a></li>
                                <li><a @click="show2" href="javascript:;">修改密码</a></li>
                                <li><a href="javascript:;">我的收藏</a></li>
                                <li><a href="javascript:;">常用入住人</a></li>
                                <li><a href="javascript:;">我的发票</a></li>
                                <li><a href="javascript:;">会员俱乐部</a></li>
                                <li><a href="javascript:;">通知</a></li>
                                <li><a href="javascript:;">消息</a></li>
                            </ul>
                        </el-card>
                    </el-aside>
                    <el-main v-if="show">
                        <el-card>
                            <div slot="header">
                                <span>资料</span>
                            </div>
                            <div>
                                <div class="inf">
                                <!-- 头像 -->
                                <div id="img1">
                                </div>
                                <!-- 基本信息 -->
                                <ul>
                                    <li>
                                        用户名：<strong>{{uname}}</strong>
                                        <span @click="adduname">填写</span>
                                    </li>
                                    <li>
                                        邮箱：<strong>{{email}}</strong>
                                        <span @click="updateemail">修改</span>
                                    </li>
                                    <li>
                                        绑定手机：<strong>{{phone}}</strong>
                                    </li>
                                </ul>
                            </div>
                            </div>
                        </el-card>

                        <el-form ref="form" :model="form" label-width="120px">
                            <el-form-item label="真实姓名：">
                                <el-input v-model="form.user_name"></el-input>
                            </el-form-item>
                            <el-form-item label="家乡：">
                                <el-cascader
                                    expand-trigger="hover"
                                    :options="options"
                                    v-model="selectedOptions2"
                                    @click="city"
                                    @change="handleChange">
                                </el-cascader>
                            </el-form-item>
                            <el-form-item label="性别：">
                                <el-radio-group v-model="sex">
                                    <el-radio :label="1">男</el-radio>
                                    <el-radio :label="0">女</el-radio>
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="出生日期：">
                                <el-date-picker
                                    v-model="birthday"
                                    type="date"
                                    placeholder="选择日期"
                                    format="yyyy 年 MM 月 dd 日"
                                    value-format="yyyy-MM-dd"
                                    >
                                </el-date-picker>
                            </el-form-item>
                            <el-form-item label="所在城市：">
                                <el-cascader
                                    expand-trigger="hover"
                                    :options="options"
                                    v-model="selectedOptions" 
                                    @click="city"
                                    @change="handleChange1">
                                </el-cascader>
                            </el-form-item>
                            <el-form-item label="兴趣爱好：">
                                <el-button round v-for="(item,i) of checkedHobbies" :key="i">{{item}}<i class="el-icon-close"></i></el-button>
                                <el-button type="text" v-if="checkedHobbies.length<10" @click="dialogFormVisible = true">添加</el-button>
                                    <el-dialog title="添加兴趣爱好" :visible.sync="dialogFormVisible">
                                        <el-form :model="form">
                                            <el-checkbox-group 
                                                v-model="checkedHobbies"
                                                :max="10">
                                                <el-checkbox v-for="(item,i) of hobbies" :label="item" :key="i">{{item}}</el-checkbox>
                                            </el-checkbox-group>
                                        </el-form>
                                        <div slot="footer" class="dialog-footer">
                                            <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
                                        </div>
                                    </el-dialog>
                                <span></span>
                            </el-form-item>
                            <el-form-item>
                                <el-button class="btn" type="primary" @click="submit">提交</el-button>
                            </el-form-item>
                        </el-form>
                    </el-main>
                    <el-main v-if="!show">
                        <el-form>
                            <el-form-item label="原始密码：">
                                <el-input autofocus type="password" v-model="upwd" @blur="pwds"></el-input>
                                <span>{{pwd}}</span>
                            </el-form-item>
                            <el-form-item label="修改密码：">
                                <el-input type="password" v-model="upwd1" @blur="pwds"></el-input>
                                <span>{{pwd}}</span>
                            </el-form-item>
                            <el-form-item label="确认密码：">
                                <el-input type="password" v-model="upwd2" @blur="check"></el-input>
                                <span>{{p}}</span>
                            </el-form-item>
                            <el-form-item>
                                <el-button class="btn" type="primary" @click="pwd">修改</el-button>
                            </el-form-item>
                        </el-form>
                    </el-main>
                </el-container>
            </div>
            <Hflooter></Hflooter>
        </div>
    </template>
    <script>
    import navtop from '../components/navtop'
    import Hflooter from '../components/Hflooter'
    export default {
        data(){
            return {
                hobbies:['跑步','足球','篮球','游泳','登山','羽毛球','钓鱼','品茶','书法','乐器','养花','看书','摄影','旅游','烘焙','唱歌','电影','美食','绘画','宠物'],
                checkedHobbies:[],
                birthday:'',
                sex:"",
                uname:"未填",
                email:"1139755334@qq.com",
                phone:"15621875194",
                form:{
                    user_name:""
                },
                iphone:'13325140285',
                options: [],
                selectedOptions2: [],
                selectedOptions: [],
                dialogFormVisible: false,
                show:true,
                upwd:'',
                upwd1:'',
                upwd2:'',
                pwd:'',
                p:''
            }
        },
        components:{
            'navtop':navtop,
            'Hflooter':Hflooter
        },
        created(){

           this.load();
           this.city();
        },
        methods: {
            pwd(){
                let params = new URLSearchParams();
                params.append('upwd',this.upwd1);
                params.append('upwd1',this.upwd);
                this.axios.post('/upwd',params,{headers:{'Content-Type':'application/x-www-form-urlencoded'}}).then(result=>{
                    this.$message({
                        message:result.data.data
                    })
                })
            },
            check(){
                if(this.upwd1==this.upwd2){
                    this.p="";
                }else{
                    this.p="两次输入不一致";
                }
            },
            pwds(){
                var pwda=/^\w{6,18}$/
                if(this.upwd==""){
                    this.pwd="*密码不能为空"
                }else{
                    if(!pwda.test(this.upwd)){
                    this.pwd="*请输入6~18位数字或者字母"
                    }else{
                    this.pwd=""
                    }
                }
            },
            show2(){
                this.show=false;
            },
            show1(){
                this.show=true;
            },
            submit(){
                var obj={
                    uname:this.uname,
                    gender:this.sex,
                    birthday:this.birthday,
                    user_name:this.form.user_name,
                    email:this.email,
                    phone:this.phone,
                    home:this.handleChange,
                    city:this.handleChange1,
                    hobby:this.checkedHobbies.toString(),
                    uid:sessionStorage.getItem('uid')
                }
                this.axios.get('/update',{params:obj}).then(result=>{
                     this.$message({
                        message:result.data.data
                    })
                })
            },
            load(){
                    this.phone=sessionStorage.getItem('phone');
                    let params = new URLSearchParams();
                    params.append('phone',this.phone);
                    this.axios.post('/userinfo',params,{headers:{'Content-Type':'application/x-www-form-urlencoded'}}).then(result=>{
                        if(result.data.code==1){
                            var arr=result.data.data[0];
                            this.email=arr.email;
                            this.iphone=this.phone.substring(0,3)+'****'+this.phone.substring(7);
                            if(arr.uname!=null){
                                this.uname=arr.uname;
                            }
                            this.sex=arr.gender;
                            this.birthday=arr.birthday;
                            this.form.user_name=arr.user_name;
                            sessionStorage.setItem('uid',arr.uid);
                        }
                    
                    })
                    
                
                
            },
            city(){
                var arr=[];
                this.axios.get("/area").then(res=>{
                    if(res.data.code==1){
                            arr=res.data.data;
                            var obj=new Object();              
                            for(var i=0;i<arr.length;i++){
                                var obj1=new Object();
                                if(obj.value!=arr[i].cname){
                                    this.options.push(obj);
                                    var obj=new Object();
                                    obj.children=[];
                                    obj.value=obj.label=arr[i].cname;
                                    obj1.label=obj1.value=arr[i].aname;
                                    obj.children.push(obj1);
                                }else{
                                    obj1.label=obj1.value=arr[i].aname;
                                    obj.children.push(obj1);
                                }                
                            }
                            this.options.push(obj);
                            this.options.splice(0,1);
                            console.log(this.options);
                    }
                    
                })
            },
            adduname(){
                this.$prompt('请输入用户名',{
                    confirmButtonText:'确定',
                    cancelButtonText:'取消',
                }).then(({value})=>{
                    this.uname=value;
                }).catch(()=>{
                    this.$message({
                        message:'取消输入'
                    })
                })
            },
            updateemail(){
                this.$prompt('请输入邮箱',{
                    confirmButtonText:'确定',
                    cancelButtonText:'取消',
                    inputPattern: /[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?/,
                    inputErrorMessage: '邮箱格式不正确'
                }).then(({value})=>{
                    this.email=value;
                }).catch(()=>{
                    this.$message({
                        message:'取消输入'
                    })
                })
            },
            handleChange(value) {
                return value.toString();
            },
            handleChange1(value) {
                return value.toString();
            }

        },
    }
    </script>
    <style>
    .btn{
        width:100px;
    }
    .el-container{
        justify-content: center;
    }
    .dialog-footer{
        text-align: center;
    }
    .el-form .el-cascader .el-input__suffix{
        left:180px;
    }
    .el-form .el-cascader .el-input__inner{
        width:220px;
    }
    .el-form .el-form-item__label{
        font-size: 18px;
        font-weight: bold;
    }
    .el-form{
        margin-top:50px;
        margin-left:50px;
    }
    .el-form .el-input{
        width:30%;
    }
    .inf ul li{
        margin-top:20px;
        font-size: 14px;
    }
    .inf ul li span{
        margin-left: 10px;
        color:#1e72df;
    }
    .inf ul li span:hover{
        cursor: pointer;
    }
    ul{
        list-style: none;
    }
    .el-main .el-card{
        width:600px;
    }
    .inf{
        display:flex;
    }
    #img1{
        width:150px;
        height:150px;
        border-radius:50%;
        background-image: url("../assets/Q.jpg");
        background-size: cover;
        margin-top:10px;
        margin-right: 0px;
    }
    #center{
        width:1000px;
        margin:0 auto;
        padding:80px;
    }
    #img{
        width:70px;
        height:70px;
        border-radius:50%;
        background-image: url("../assets/Q.jpg");
        background-size: cover;
        margin-top:10px;
        margin-left: 10px;
    }
    .info{
        display:flex;
        border:2px solid rgb(241, 240, 240); 
        border-top:3px solid rgb(250, 117, 8);
    }
    .info ul li{
        margin-top:5px;
    }
    .info ul li:first-child{
        font-weight: bold;
        font-size: 14px;
    }
    .info ul a{
        text-decoration: none;
        color:rgb(63, 116, 117);
        font-size: 14px;
    }
    .info ul a:hover{
        text-decoration-line: underline;
    }
    .title img{
        width:30px;
        margin-right:10px;
        vertical-align: middle;
    }
    .title span{
        font-size: 18px;
        font-weight: bold;
    }
    .card:not(:first-child) a{
        text-decoration: none;
        font-size: 16px;
        color:#000;
    }

    .card ul{
        list-style: none;
    }
    .card ul li{
        margin-bottom: 12px;
    }
    .card a:hover{
        color:rgb(250, 117, 8);
    }
    .el-card__header{
        background-color:#eee;
        margin:0 !important;
        padding:10px;
    }
    .el-card__body{
        padding:10px;
    }
    </style>
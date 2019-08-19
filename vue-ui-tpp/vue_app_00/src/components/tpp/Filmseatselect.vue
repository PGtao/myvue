<template>
  <div>
    <!-- 头部 -->
    <div class="head">
      <div @click="mofanhui()">返回</div>
      <div class="cinema">杭州怀德文华影视城</div>
      <div>分享</div>
    </div>
    <!-- 中部静态页 -->
    <div class="fssc">
      <!-- 影片名称 -->
      <div class="filmname">千与千寻</div>
      <div class="fssc-two">
        <span>今天06-21 15:50~17:55 国语(3D)</span>
      </div>
      <!-- 第三次 -->
      <div class="fssc-three">
        <div class="threeimg">
          <div>
            <img src="../../../static/img/film/fs1.png" alt="">
            <span>可选</span>
          </div>
          <div>
            <img src="../../../static/img/film/fs2.png" alt="">
            <span>已售</span>
          </div>
          <div>
            <div class="kuang"></div>
            <span>最佳观影区</span>
          </div>
        </div>
      </div>
    </div>
     <!-- 选座 -->
      <div class="cinema-wrapper">
        <div class="seat-wrapper">
          <div class="screen">3号激光巨幕厅</div>
          <div class="screen-center">银幕中央</div>
          <div class="inner-seat-wrapper"><!--装所有座位-->
            <!-- 遍历行 -->
            <div class="row" v-for="(row,i) of seatRow" :key="i" >
              <div class="seat" v-for="(col,j) of seatCol" :key="j" >
                <div class="seat-inner"
                 @click="handleChooseseat(row-1,col-1)"
                 :class="seatArray[i][j] == 2 ? 'bought-seat' : seatArray[i][j] == 1 ? 'selected-seat' : 'unselected-seat'"
                 >
                </div>
                  
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- 底部 -->
      <div>
        <!-- 推荐座位 -->
        <div>

        </div>
        <!-- 点击购票 -->
        <div class="buySeat" @click="buySeat()">点击购票</div>
      </div>
  </div>
</template>
<script>
export default {
  data() {
    return {

      //影院座位的二维数组,-1为非座位，0为未购座位，1为已选座位(绿色),2为已购座位(红色)
			seatArray: [
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0],
        // [0,0,0,0,0,0,0,0,0]
      ],
			//影院座位行数
			seatRow: 8,
			//影院座位列数
      seatCol: 9,
      // col:0
    }
  },
  created(){
    //初始座位数组
		// initSeatArray: function() {
			var seatArray =new Array(this.seatRow)
				.fill(0)
				.map(() => Array(this.seatCol).fill(0));
      // this.seatArray.unshift = seatArray;  
      this.seatArray = seatArray;
      console.log(this.seatArray);
		// },
  },
  methods: { 
    mofanhui(){
      this.$router.push("/Home")
    },
    	//选定且购买座位
		buySeat: function() {
			//遍历seatArray，将值为1的座位变为2
			var oldArray = this.seatArray.slice();
			for (var i = 0; i < this.seatRow; i++) {
				for (var j = 0; j < this.seatCol; j++) {
					if (oldArray[i][j] === 1) {
						oldArray[i][j] = 2;
					}
				}
			}
			this.seatArray = oldArray;
      // alert("购买成功")
      this.$messagebox.confirm('是否购买').then
     (action=>{
          console.log("action");         
        }).catch((err) => {
          // this.$router.push("/Mogoumainav")
           console.log(err); 
        });
		},
		//处理座位选择逻辑
		handleChooseseat(row,col){
      // this.seatArray[row].splice(0,1,1)
			var seatValue = this.seatArray[row][col];
			var newArray = this.seatArray;
			//如果是已购座位，直接返回
			if (seatValue == 2) return;
			//如果是已选座位点击后变未选
			if (seatValue == 1) {
				newArray[row][col] = 0;
        console.log("值为"+seatValue+"当前为"+row+"行");
        
			} else if (seatValue == 0) {
        this.seatArray[row][col]=1
				newArray[row][col] = 1;
				console.log("值为"+seatValue+"当前为"+row+"行")
		 }
			// //整体更新二维数组，Vue无法检测到数组某一项更新,必须slice复制一个数组才行
      this.seatArray = newArray.slice();
		}
  },
 
  
}
</script>
<style scoped>
  .cinema-wrapper{
    height:400px;
    background:rgb(230, 228, 228);
  }
  .buySeat{
    width:100%;
    height:50px;
    line-height: 50px;
    background:crimson;
    position: absolute;
    left: 0;
    bottom: 0;
    color: #fff;
    text-align: center;
  }
  .seat-inner{
    height:25px;
  }
  .selected-seat{
    background: url("../../../static/img/film/fs3.png");
    background-size: 100% 100%;
  }
  .bought-seat{
    background: url("../../../static/img/film/fs2.png");
    background-size: 100% 100%;
  }
  .unselected-seat{
     background: url("../../../static/img/film/fs1.png");
     background-size: 100% 100%;
  }
  .head{
    display:flex;
    text-align: center;
    height:30px;
    padding:0;
    border-bottom:1px solid #e8e8e8;
  }
  .cinema{
    font-weight:800;
    font-size: 18px;
  }
  .fssc{
    width:90%;
    margin:0 auto;
  }
  .filmname{
    font-weight:1000;
    padding:10px 0 15px 0;
  }
  .fssc-two>span{
    font-size:0.24rem;
    color:#b3b3b3;
  }
  .fssc-three{
    height:45px;
    text-align: center;
    margin-top:30px;
  }
  .threeimg{
    display:flex;
    width:70%;
    margin:0 auto;
  }
  .threeimg>div{
    margin-right:5px;
  }
  .threeimg img{
    width:20px;
    margin-right:5px;
  }
  .threeimg span{
    font-size: 12px;
    vertical-align: top;
  }
  .kuang{
    width:17px;
    height:14px;
    border:1px dashed red;
    display: inline-block;
    margin-right:5px;
    border-radius: 3px;
  }
  .seat-wapper{
    height:6rem;
    margin:0.3rem auto;
    position: relative;
    overflow: hidden;
    background: #aaa;
  }
  .screen{
    font-size:15px;
    margin: 0 auto;
    height: 1rem;
    width: 8rem;
    background-color: #b8b5b5;
    border-radius: 0 0 0.8rem 0.8rem;
    color: #585858;
    line-height: 1rem;
    text-align: center;
  }
  .screen-center{
    position: absolute;
    left: 50%;
    -webkit-transform: translateX(-50%);
    transform: translateX(-50%);
    padding: 0.05rem;
    font-size: 0.13rem;
    border-radius: 5px;
    top: 12.8rem;
    background-color: #f6f6f6;
    color: #636363;
    border: 1px solid #b1b1b1;
  }
  .inner-seat-wrapper{
    margin-top:50px;
    margin-left:30px; 
  }
  .seat{
    width:30px;height:25px;
    /* background: url("../../../static/img/film/fs1.png"); */
    background-size: 100%;
    display: inline-block;
    margin: 2px;
  }
</style>


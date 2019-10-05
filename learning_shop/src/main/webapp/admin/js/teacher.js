new Vue({
    el:"#app",
    data:{
        courseList:[]
    },
    methods:{
    	findAllCourseList:function () {
            var _this = this;
            axios.get("/findAllCourseList")
                .then(function (response) {
                	alert()
                    _this.courseList = response.data;
                })
                .catch(function (reason) {
                    console.log(reason);
                })
        }
    },
    created:function () {
        this.findAllCourseList();
    }
})
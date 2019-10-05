new Vue({
    el:"#app",
    data:{
        commentList:[]
    },
    methods:{
    	getCommentList:function () {
            var _this = this;
            axios.get("/course/getCommentList")
                .then(function (response) {
                    _this.commentList = response.data.data;
                })
                .catch(function (reason) {
                    console.log(reason);
                })
        }
    },
    created:function () {
        this.getCommentList();
    }
})

let board = {
    delete: function () {
        if (confirm("정말 해당 게시물을 삭제 하시겠습니까?")) {
            return true;
        }
        else {
            return false;
        }
    }
}
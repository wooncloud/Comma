// regitst
// regist read

let regist = {
    isIDChecked: false,
    init: function () {

    },
    // 아이디 중복검사
    idDupliCheck: function () {
        let id = document.getElementById("registID").value;
        if (!comma.util.regEx.id.test(id)) {
            alert("아이디를 확인해 주세요.\n(소문자 또는 소문자 + 숫자로 구성하며 길이 최소 6자 / 최대 20자)");
            return false;
        }
        // if(id == ""){
        //     alert ("아이디가 없습니다. 아이디를 입력하세요.");
        //     return;
        // }

        // TODO: 서버개발하면 AJAX 개발하기
        let isDupl = true;

        // 서버와 Ajax를 통해서 중복인지 확인함
        if (isDupl) {
            comma.util.validationToggle(true, document.getElementById("registID"), document.getElementById("idValidLabel"));
            this.isIDChecked = true;
        } else {
            alert("이미 사용중인 아이디 입니다.\n다른 아이디를 사용해 주세요.");
            this.isIDChecked = false;
        }
    },
    idChangeEvent(e) {
        // 아이디 바뀌면 다시 중복검사 해야 함.
        this.isIDChecked = false;
        comma.util.validationToggle(false, document.getElementById("registID"), document.getElementById("idValidLabel"));
    },
    submit: function () {
        if (!document.forms[0].checkValidity()) {
            for (let e of document.forms[0].elements) {
                if (comma.util.isEmpty(e.value)) {
                    e.focus();
                    break;
                }
            }
            return false;
        }

        // 아이디 길이
        let id = document.getElementById("registID").value;
        if (!comma.util.regEx.id.test(id)) {
            alert("아이디를 확인해 주세요.\n(소문자 또는 소문자 + 숫자로 구성하며 길이 최소 6자 / 최대 20자)");
            return false;
        }

        // 아이디 중복검사 했는지
        if (!this.isIDChecked) {
            alert("먼저 아이디 중복검사를 해야합니다.");
            return false;
        }

        // 비밀번호, 비번확인 같은지 확인
        let pw = document.getElementById("registPW").value;
        let pwc = document.getElementById("registPWC").value;
        if (comma.util.regEx.pw.test(pw) && comma.util.regEx.pw.test(pwc)) {
            if (pw != pwc) {
                alert("비밀번호가 일치하지 않습니다.\n다시 확인해 주세요.");
                return false;
            }
        }
        else {
            alert("패스워드를 다시 입력해 주세요.\n(최소 8 자 및 대문자, 숫자, 특수 문자를 포함해야 합니다.)");
            return false;
        }

        // 전화번호
        let phone = document.getElementById("registPhone").value;
        if (!comma.util.regEx.phone.test(phone)) {
            alert("전화번호를 형식에 맞게 입력해 주세요.");
            return false;
        }

        // 이메일주소 형식 맞는지
        let email1 = document.getElementById("registEmailID").value;
        let email2 = document.getElementById("registEmailServer").value;
        let email = email1 + "@" + email2;
        if (!comma.util.regEx.email.test(email)) {
            alert("이메일을 형식에 맞게 입력해 주세요.");
            return false;
        }

        alert("모두가 올바르게 입력됨.");
    }
}

let registRead = {
    chks: null,
    allChk: null,
    init: function () {
        this.chks = document.getElementsByName("agree");
        this.allChk = document.getElementById("allChk");

        for (let c of this.chks) {
            c.onclick = this.checkValid;
        }

        this.allChk.onclick = this.allCheck;
    },
    checkValid: function () {
        if (comma.util.chkCnt(registRead.chks) == registRead.chks.length) {
            registRead.allChk.checked = true;
        } else {
            registRead.allChk.checked = false;
        }
    },
    allCheck: function () {
        for (let c of registRead.chks) {
            c.checked = this.checked;
        }
    },
    // 체크 안되어 있는데 다음으로 이동하려고 하면 틩기기
    nextCheck: function () {
        let isNext = comma.util.isAllChk(this.chks);

        if (!isNext) {
            alert("위의 내용을 모두 동의하셔야 회원가입이 가능합니다.");
        }

        return isNext;
    }
}
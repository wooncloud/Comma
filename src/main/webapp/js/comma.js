// comma : util, header
let comma = {
    util: {
        regEx: {
            space: /\s/,
            numbers: /^[0-9]*$/,
            eng: /^[a-zA-Z]*$/,
            engAndNum: /^[a-zA-Z0-9]*$/,
            kor: /^[가-힣]*$/,
            email: /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]/,
            phone: /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/,
            // 소문자, 소문자,숫자 포함 길이 : 6 ~ 20까지
            id: /^[a-z0-9]{6,20}$/,
            // 최소 8 자 최대 128 지 및 대문자 하나 이상, 소문자 하나, 숫자 하나 및 특수 문자 하나 이상
            pw: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,128}$/
        },
        // 체크박스 배열을 받아 체크 된 갯수 반환
        chkCnt: function (chks) {
            let cnt = 0;

            for (let c of chks) {
                if (c.checked) {
                    cnt++
                }
            }

            return cnt;
        },
        // 모두 체크가 되어 있다면 true, 아니면 false
        isAllChk: function (chks) {
            return chks.length == this.chkCnt(chks);
        },
        validationToggle: function (toggle, form, label) {
            if (toggle) {
                form.classList.add("border-valid-checked");
                label.style.display = "block";
            }
            else {
                form.classList.remove("border-valid-checked");
                label.style.display = "none";
            }
        },
        // 값이 빈 공백 또는 없다면 true 아니면 false
        isEmpty: function (val) {
            return val.replace(comma.util.regEx.space, "") == "" ? true : false;
        }
    },
    header: {
        mobileCollapse: function () {
            let mSide = document.getElementById("mobileSide");

            if (mSide.classList.contains("on-side")) {
                mSide.classList.remove("on-side");
            } else {
                mSide.classList.add("on-side");
            }
        }
    }
}